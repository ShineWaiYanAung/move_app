import 'package:flutter/material.dart';

class VideoTrailerButtons extends StatefulWidget {
  const VideoTrailerButtons({super.key});

  @override
  State<VideoTrailerButtons> createState() => _VideoTrailerButtonsState();
}

class _VideoTrailerButtonsState extends State<VideoTrailerButtons> {
  int selectedcolor = 0;
  List<String> videodata = [
    "Details",
    "Trailer",
    "Cast",
    "Shot",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          gradient: const LinearGradient(
              colors: [Color(0xFF3F377F), Color(0xFF43A8D4)])),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: videodata.map((title) {
            int index  = videodata.indexOf(title);
            bool isSelected = selectedcolor ==index;
            return InkWell(
              onTap: (){
                setState(() {
                  selectedcolor  = index;
                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                    color: isSelected  ? Colors.black: Colors.transparent,
                    borderRadius: BorderRadius.circular(23)),
                alignment: Alignment.center,
                width: 80,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            );
          }).toList()),
    );
  }
}
