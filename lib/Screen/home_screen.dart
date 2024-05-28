import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_project/Screen/screen_two.dart';
import 'package:movie_project/Screen/thirdPageg.dart';
import '../Componets/SearchMenuIcon.dart';
import '../Componets/movie_home_screen_list.dart';
import '../Componets/popular_movie_row.dart';
import '../Componets/trending_move_row.dart';
import '../Theme/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<IconData> navIcon = [
    Icons.home,
    Icons.favorite_border_outlined,
    Icons.menu,
    Icons.person,
  ];
  int selectedIndex = 0;
  List<Widget> pages =[
    MoiveListView(),
    SecondPage(),
    Thirdpage(),
    Thirdpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homepage,
      body:   SafeArea(
        child: Stack(
          children: [
            pages[selectedIndex],
            Positioned(
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
            ),
          ],
        )
      ),
    );
  }
}






