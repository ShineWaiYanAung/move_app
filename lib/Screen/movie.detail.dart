import 'package:flutter/material.dart';
import 'package:movie_project/VidoeData.dart';

import '../Componets/movie_data.dart';
import '../Componets/movie_genre.dart';
import '../Componets/movie_information.dart';
import '../Componets/movie_trailer_buttons.dart';
import '../Theme/colors.dart';

class MovieDetail extends StatelessWidget {
  final VideoInfo movie;
  const MovieDetail({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(movie.path), fit: BoxFit.fill)),
                  ),
                ),
              ),
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
                            movie.title,
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
                            data: movie.language.toString(),
                            iconData: Icons.language,
                          ),
                          MovieInformation(
                            data: movie.duration.toString(),
                            iconData: Icons.schedule,
                          ),
                          MovieInformation(
                            data: movie.review.toString(),
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
                        movieType1: movie.gene.type1,
                        movieType2: movie.gene.type2,
                        movieType3: movie.gene.type3,
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
                        data2: movie.director.toString(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
