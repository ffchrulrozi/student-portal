// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
    int? id;
    String? studentId;
    String? password;
    String? name;
    String? photo;
    String? sex;
    DateTime? birthdate;
    String? religion;
    String? province;
    String? city;
    String? faculty;
    String? major;

    Profile({
        this.id,
        this.studentId,
        this.password,
        this.name,
        this.photo,
        this.sex,
        this.birthdate,
        this.religion,
        this.province,
        this.city,
        this.faculty,
        this.major,
    });

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        studentId: json["student_id"],
        password: json["password"],
        name: json["name"],
        photo: json["photo"],
        sex: json["sex"],
        birthdate: json["birthdate"] == null ? null : DateTime.parse(json["birthdate"]),
        religion: json["religion"],
        province: json["province"],
        city: json["city"],
        faculty: json["faculty"],
        major: json["major"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "student_id": studentId,
        "password": password,
        "name": name,
        "photo": photo,
        "sex": sex,
        "birthdate": "${birthdate!.year.toString().padLeft(4, '0')}-${birthdate!.month.toString().padLeft(2, '0')}-${birthdate!.day.toString().padLeft(2, '0')}",
        "religion": religion,
        "province": province,
        "city": city,
        "faculty": faculty,
        "major": major,
    };
}
