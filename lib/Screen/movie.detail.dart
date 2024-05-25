import 'package:flutter/material.dart';
import 'package:movie_project/VidoeData.dart';

class MovieDetail extends StatelessWidget {
  final VideoInfo movie;
  const MovieDetail({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(movie.title),
    );
  }
}
