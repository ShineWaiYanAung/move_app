import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_project/Screen/home_screen.dart';
import 'package:movie_project/Screen/screen_two.dart';
import 'package:movie_project/Screen/thirdPageg.dart';

class NavBottomWidget extends StatefulWidget {
  const NavBottomWidget({
    super.key,
  });

  @override
  State<NavBottomWidget> createState() => _NavBottomWidgetState();
}

class _NavBottomWidgetState extends State<NavBottomWidget> {
  List<IconData> navIcon = [
    Icons.home,
    Icons.favorite_border_outlined,
    Icons.menu,
    Icons.person,
  ];
  int selectedIndex = 0;
  List<Widget> pages =[
    MyHomePage(),
    SecondPage(),
    Thirdpage(),
    Thirdpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 60,
      right: 20,
      left: 20,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.075,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: navIcon.map(
                (icon) {
                  int index = navIcon.indexOf(icon);
                  bool isSelected = selectedIndex ==index;
                  return Material(
                    color: Colors.transparent,
                    child: Container(
                      alignment: Alignment.center,
                      child: IconButton(
                          onPressed: () => setState(() {
                                selectedIndex = index;
                                Navigator.push(context, MaterialPageRoute(builder: (context) => pages[index],));
                              }),
                          icon: Icon(
                            icon,
                            size: 35,
                            color: isSelected? Colors.blueAccent : Colors.black.withOpacity(0.8),
                          )),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
