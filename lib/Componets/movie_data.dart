import 'package:flutter/material.dart';
class MovieData extends StatelessWidget {
  final String  data1,data2;
  const MovieData({
    super.key, required this.data1, required this.data2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         SizedBox(
          child: Text(
            data1,
            style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
        const SizedBox(width: 14,),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Color(0xFF3F377F), Color(0xFF43A8D4)],
            ),
          ),
          child: Text(
            data2,
            style: TextStyle(
                fontSize: 14,
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.7)),

          ),
        )
      ],
    );
  }
}