import 'package:flutter/material.dart';
import 'package:movie_project/Componets/see_all.dart';

import '../Screen/movie.detail.dart';
import '../Theme/colors.dart';
import '../VidoeData.dart';
class PopularMovieWidgetRow extends StatelessWidget {
  const PopularMovieWidgetRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        ///Popular Movie Block1
        SeeAllWidget(
          title: 'Popular',
          onPressed: () {},
        ),

        Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1.18),
              itemCount: VideoPopularData.vidoePopularinfro.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final video = VideoPopularData.vidoePopularinfro[index];
                return Container(
                  padding: EdgeInsets.only(right: 10, left: 10, top: 20),
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetail(movie: video,),));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(video.path),
                                    fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            video.title,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColor.textColor,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "(${video.year.toString()})",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color:
                                AppColor.textColor.withOpacity(0.7),
                                fontSize: 14),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}