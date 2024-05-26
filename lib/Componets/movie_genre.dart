import 'package:flutter/material.dart';

class MovieGenre extends StatelessWidget {
  final String movieType1,movieType2,movieType3;
  const MovieGenre({
    super.key, required this.movieType1, required this.movieType2, required this.movieType3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        SizedBox(
          child: Text(
            "GENRE :",
            style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Color(0xFF3F377F), Color(0xFF43A8D4)],
            ),
          ),
          child: Text(
            movieType1,
            style: TextStyle(
                fontSize: 14,
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.7)),

          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Color(0xFF3F377F), Color(0xFF43A8D4)],
            ),
          ),
          child: Text(
            movieType2,
            style: TextStyle(
                fontSize: 14,
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.7)),

          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Color(0xFF3F377F), Color(0xFF43A8D4)],
            ),
          ),
          child: Text(
            movieType3,
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