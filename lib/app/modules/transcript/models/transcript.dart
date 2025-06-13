// To parse this JSON data, do
//
//     final transcript = transcriptFromJson(jsonString);

import 'dart:convert';

Transcript transcriptFromJson(String str) => Transcript.fromJson(json.decode(str));

String transcriptToJson(Transcript data) => json.encode(data.toJson());

class Transcript {
    List<Semester>? semesters;
    int? totalCredit;
    double? avgScore;
    String? avgGrade;

    Transcript({
        this.semesters,
        this.totalCredit,
        this.avgScore,
        this.avgGrade,
    });

    factory Transcript.fromJson(Map<String, dynamic> json) => Transcript(
        semesters: json["semesters"] == null ? [] : List<Semester>.from(json["semesters"]!.map((x) => Semester.fromJson(x))),
        totalCredit: json["totalCredit"],
        avgScore: json["avgScore"]?.toDouble(),
        avgGrade: json["avgGrade"],
    );

    Map<String, dynamic> toJson() => {
        "semesters": semesters == null ? [] : List<dynamic>.from(semesters!.map((x) => x.toJson())),
        "totalCredit": totalCredit,
        "avgScore": avgScore,
        "avgGrade": avgGrade,
    };
}

class Semester {
    String? title;
    List<TranscriptElement>? transcripts;
    int? totalCredit;
    double? avgScore;
    String? avgGrade;

    Semester({
        this.title,
        this.transcripts,
        this.totalCredit,
        this.avgScore,
        this.avgGrade,
    });

    factory Semester.fromJson(Map<String, dynamic> json) => Semester(
        title: json["title"],
        transcripts: json["transcripts"] == null ? [] : List<TranscriptElement>.from(json["transcripts"]!.map((x) => TranscriptElement.fromJson(x))),
        totalCredit: json["totalCredit"],
        avgScore: json["avgScore"]?.toDouble(),
        avgGrade: json["avgGrade"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "transcripts": transcripts == null ? [] : List<dynamic>.from(transcripts!.map((x) => x.toJson())),
        "totalCredit": totalCredit,
        "avgScore": avgScore,
        "avgGrade": avgGrade,
    };
}

class TranscriptElement {
    String? subject;
    int? credit;
    double? score;
    String? grade;

    TranscriptElement({
        this.subject,
        this.credit,
        this.score,
        this.grade,
    });

    factory TranscriptElement.fromJson(Map<String, dynamic> json) => TranscriptElement(
        subject: json["subject"],
        credit: json["credit"],
        score: json["score"]?.toDouble(),
        grade: json["grade"],
    );

    Map<String, dynamic> toJson() => {
        "subject": subject,
        "credit": credit,
        "score": score,
        "grade": grade,
    };
}
