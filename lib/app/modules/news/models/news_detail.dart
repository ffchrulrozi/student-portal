// To parse this JSON data, do
//
//     final newsDetail = newsDetailFromJson(jsonString);

import 'dart:convert';

NewsDetail newsDetailFromJson(String str) => NewsDetail.fromJson(json.decode(str));

String newsDetailToJson(NewsDetail data) => json.encode(data.toJson());

class NewsDetail {
    int? id;
    String? title;
    String? img;
    String? summary;
    String? content;
    DateTime? updatedAt;

    NewsDetail({
        this.id,
        this.title,
        this.img,
        this.summary,
        this.content,
        this.updatedAt,
    });

    factory NewsDetail.fromJson(Map<String, dynamic> json) => NewsDetail(
        id: json["id"],
        title: json["title"],
        img: json["img"],
        summary: json["summary"],
        content: json["content"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "img": img,
        "summary": summary,
        "content": content,
        "updated_at": updatedAt?.toIso8601String(),
    };
}
