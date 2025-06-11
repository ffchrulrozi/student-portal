import 'dart:convert';

List<HomeNews> homeNewsFromJson(String str) => List<HomeNews>.from(json.decode(str).map((x) => HomeNews.fromJson(x)));

String homeNewsToJson(List<HomeNews> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeNews {
    String? img;
    String? title;
    String? desc;
    String? updatedat;

    HomeNews({
        this.img,
        this.title,
        this.desc,
        this.updatedat,
    });

    factory HomeNews.fromJson(Map<String, dynamic> json) => HomeNews(
        img: json["img"],
        title: json["title"],
        desc: json["desc"],
        updatedat: json["updatedat"],
    );

    Map<String, dynamic> toJson() => {
        "img": img,
        "title": title,
        "desc": desc,
        "updatedat": updatedat,
    };
}
