// To parse this JSON data, do
//
//     final profileUpdateResponse = profileUpdateResponseFromJson(jsonString);

import 'dart:convert';

ProfileUpdateResponse profileUpdateResponseFromJson(String str) => ProfileUpdateResponse.fromJson(json.decode(str));

String profileUpdateResponseToJson(ProfileUpdateResponse data) => json.encode(data.toJson());

class ProfileUpdateResponse {
    String? message;

    ProfileUpdateResponse({
        this.message,
    });

    factory ProfileUpdateResponse.fromJson(Map<String, dynamic> json) => ProfileUpdateResponse(
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
    };
}
