// To parse this JSON data, do
//
//     final progress = progressFromJson(jsonString);

import 'dart:convert';

Progress progressFromJson(String str) => Progress.fromJson(json.decode(str));

String progressToJson(Progress data) => json.encode(data.toJson());

class Progress {
    List<Subject>? subjects;
    double? score;
    String? grade;

    Progress({
        this.subjects,
        this.score,
        this.grade,
    });

    factory Progress.fromJson(Map<String, dynamic> json) => Progress(
        subjects: json["subjects"] == null ? [] : List<Subject>.from(json["subjects"]!.map((x) => Subject.fromJson(x))),
        score: json["score"]?.toDouble(),
        grade: json["grade"],
    );

    Map<String, dynamic> toJson() => {
        "subjects": subjects == null ? [] : List<dynamic>.from(subjects!.map((x) => x.toJson())),
        "score": score,
        "grade": grade,
    };
}

class Subject {
    String? name;
    bool? isFailed;
    int? credit;
    List<Day>? day;
    double? midSemester;
    double? endSemester;
    double? score;
    String? grade;

    Subject({
        this.name,
        this.isFailed,
        this.credit,
        this.day,
        this.midSemester,
        this.endSemester,
        this.score,
        this.grade,
    });

    factory Subject.fromJson(Map<String, dynamic> json) => Subject(
        name: json["name"],
        isFailed: json["isFailed"],
        credit: json["credit"],
        day: json["day"] == null ? [] : List<Day>.from(json["day"]!.map((x) => Day.fromJson(x))),
        midSemester: json["midSemester"]?.toDouble(),
        endSemester: json["endSemester"]?.toDouble(),
        score: json["score"]?.toDouble(),
        grade: json["grade"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "isFailed": isFailed,
        "credit": credit,
        "day": day == null ? [] : List<dynamic>.from(day!.map((x) => x.toJson())),
        "midSemester": midSemester,
        "endSemester": endSemester,
        "score": score,
        "grade": grade,
    };
}

class Day {
    bool? isPresent;
    double? homeWork;

    Day({
        this.isPresent,
        this.homeWork,
    });

    factory Day.fromJson(Map<String, dynamic> json) => Day(
        isPresent: json["isPresent"],
        homeWork: json["homeWork"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "isPresent": isPresent,
        "homeWork": homeWork,
    };
}
