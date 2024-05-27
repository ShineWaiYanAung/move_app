import 'dart:ui';

import 'package:flutter/material.dart';
import '../Componets/SearchMenuIcon.dart';
import '../Componets/nav_bottom_widget.dart';
import '../Componets/popular_movie_row.dart';
import '../Componets/see_all.dart';
import '../Componets/trending_move_row.dart';
import '../Theme/colors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    List <Widget> movieRows=
    [
      PopularMovieWidgetRow(),
      TrendingVideoWidgetRow(),
      TrendingVideoWidgetRow(),
      TrendingVideoWidgetRow(),
    ];
    return Scaffold(
      backgroundColor: AppColor.homepage,
      body:  SafeArea(
        child: Stack(
          children: [
            ///Top icons
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 15,
              ),
              child: SearchMenuIcon(),
            ),
            Positioned(
              top: 50,
              left: 25,
              child: Text(
                "Movie",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: AppColor.textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 90,
                right: 30,
                left: 20
              ),
              child: ListView(
                children: movieRows.map((movieData){
                  return    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(),
                      width: double.infinity,
                      height: screenHeight* 0.3,
                      child: movieData,
                    ),
                  );
                }).toList(),
              ),
            ),
            ///NavBottom
            NavBottomWidget(),
          ],
        ),
      ),
    );
  }
}






