import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_project/VidoeData.dart';

import '../Componets/movie_data.dart';
import '../Componets/movie_genre.dart';
import '../Componets/movie_information.dart';
import '../Componets/movie_trailer_buttons.dart';
import '../Theme/colors.dart';

class MovieDetail extends StatefulWidget  {
  final VideoInfo movie;
  const MovieDetail({super.key, required this.movie});

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool showResult = false;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
    _timecontroller();
  }

  void _timecontroller() {
    Timer(const Duration(seconds: 3), () {
      setState(() {
        showResult = true;
        _controller.dispose();
      });
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homepage,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: Column(
            children: [
              ///BackAndShareIcon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: showResult ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(widget.movie.path), fit: BoxFit.fill)),
                  ):Center(
                child: LottieBuilder.asset(
                "json/videoAnimation.json",
                  controller: _controller,
                  width: 250,
                  height: 250,
                ),
              ),

        ),
              ) ,
              Flexible(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      ///MovieName
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.movie.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_add_outlined,
                              color: Colors.blue.withOpacity(0.7),
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),

                      ///MovieDetails
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MovieInformation(
                            data:  widget.movie.language.toString(),
                            iconData: Icons.language,
                          ),
                          MovieInformation(
                            data:  widget.movie.duration.toString(),
                            iconData: Icons.schedule,
                          ),
                          MovieInformation(
                            data:  widget.movie.review.toString(),
                            iconData: Icons.star,
                          ),
                        ],
                      ),

                      ///MovieTrailer
                      SizedBox(
                        height: 20,
                      ),
                      VideoTrailerButtons(),

                      ///Movie GENRE :
                      SizedBox(
                        height: 20,
                      ),
                      MovieGenre(
                        movieType1:  widget.movie.gene.type1,
                        movieType2:  widget.movie.gene.type2,
                        movieType3:  widget.movie.gene.type3,
                      ),

                      ///MovieMpaaRating
                      SizedBox(
                        height: 20,
                      ),
                      MovieData(data1: "MAPPA RATTING:", data2: "PG-13"),

                      ///MovieDirector
                      SizedBox(
                        height: 20,
                      ),
                      MovieData(
                        data1: 'DIRECTOR:',
                        data2:  widget.movie.director.toString(),
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

