 class VideoPouplarData{
  static List<VideoInfo> vidoePopularinfro =[
    VideoInfo(title: "Coda",path:  "assets/noimage.png",year:  2023),
    VideoInfo(title: "Coda",path:  "assets/noimage.png",year:  2023),
    VideoInfo(title: "Coda",path:  "assets/noimage.png",year:  2023),
    VideoInfo(title: "Coda",path:  "assets/noimage.png",year:  2023),

  ];
}

class VideoTrendingData{
  static List<VideoInfo> videoTrendinginfro =[
    VideoInfo(title: "LightYear", path: "assets/noimage.png", year: 2004),
    VideoInfo(title: "LightYear", path: "assets/noimage.png", year: 2004),
    VideoInfo(title: "LightYear", path: "assets/noimage.png", year: 2004),
    VideoInfo(title: "LightYear", path: "assets/noimage.png", year: 2004)
  ];
}
class VideoInfo{
 final String title;
 final String path;
 final int year;

 VideoInfo({required this.title,required this.path,required this.year});

}