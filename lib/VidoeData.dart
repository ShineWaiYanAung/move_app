 class VideoPopularData{
  static List<VideoInfo> vidoePopularinfro =[
    VideoInfo('English','1hr50min','6/1','SianHeader',Gene('Romance',"Drama",'Horor'),title: "Coda",path:  "assets/noimage.png",year:  2023),
    VideoInfo('English','1hr50min','6/1','SianHeader',Gene('Romance',"Drama",'Horor'),title: "Coda",path:  "assets/noimage.png",year:  2023),
    VideoInfo('English','1hr50min','6/1','SianHeader',Gene('Romance',"Drama",'Horor'),title: "Coda",path:  "assets/noimage.png",year:  2023),
    VideoInfo('English','1hr50min','6/1','SianHeader',Gene('Romance',"Drama",'Horor'),title: "Coda",path:  "assets/noimage.png",year:  2023),


  ];
}

class VideoTrendingData{
  static List<VideoInfo> videoTrendinginfro =[
    VideoInfo('English','1hr50min','6/3','Mike',Gene('Romance',"Drama",'Horor'),title: "LightYear", path: "assets/noimage.png", year: 2004),
    VideoInfo('English','1hr50min','6/3','Mike',Gene('Romance',"Drama",'Horor'),title: "LightYear", path: "assets/noimage.png", year: 2004),
    VideoInfo('English','1hr50min','6/3','Mike',Gene('Romance',"Drama",'Horor'),title: "LightYear", path: "assets/noimage.png", year: 2004),

  ];
}
class VideoInfo{
 final String title;
 final String path;
 final int year;
 final String? language;
 final String? duration;
 final String? review;
 final String? director;
 final Gene  gene;


  VideoInfo(this.language, this.duration, this.review,this.director, this.gene,{required this.title,required this.path,required this.year,});

}

class  Gene {
  final String type1;
  final String type2;
  final String  type3;
  Gene(this.type1,this.type2,this.type3);
}