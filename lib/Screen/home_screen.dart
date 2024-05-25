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
    return Scaffold(
      backgroundColor: AppColor.homepage,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Top icons
                  const SearchMenuIcon(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Movie",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: AppColor.textColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///Popular Moive Block1
                  SeeAllWidget(
                    title: 'Popular',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///Popular Movie Black2
                  const PoplarMovieWidgetRow(),
                  SizedBox(
                    height: 10,
                  ),
                  //TrendingVideoWidget
                  TrendingVideoWidget(),
                ],
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
