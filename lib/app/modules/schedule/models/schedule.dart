// To parse this JSON data, do
//
//     final schedule = scheduleFromJson(jsonString);

import 'dart:convert';

Schedule scheduleFromJson(String str) => Schedule.fromJson(json.decode(str));

String scheduleToJson(Schedule data) => json.encode(data.toJson());

class Schedule {
    List<ScheduleElement>? schedules;

    Schedule({
        this.schedules,
    });

    factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        schedules: json["schedules"] == null ? [] : List<ScheduleElement>.from(json["schedules"]!.map((x) => ScheduleElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "schedules": schedules == null ? [] : List<dynamic>.from(schedules!.map((x) => x.toJson())),
    };
}

class ScheduleElement {
    String? subject;
    String? day;
    Time? time;
    String? scheduleClass;
    String? lecturer;
    String? room;

    ScheduleElement({
        this.subject,
        this.day,
        this.time,
        this.scheduleClass,
        this.lecturer,
        this.room,
    });

    factory ScheduleElement.fromJson(Map<String, dynamic> json) => ScheduleElement(
        subject: json["subject"],
        day: json["day"],
        time: json["time"] == null ? null : Time.fromJson(json["time"]),
        scheduleClass: json["class"],
        lecturer: json["lecturer"],
        room: json["room"],
    );

    Map<String, dynamic> toJson() => {
        "subject": subject,
        "day": day,
        "time": time?.toJson(),
        "class": scheduleClass,
        "lecturer": lecturer,
        "room": room,
    };
}

class Time {
    String? start;
    String? end;

    Time({
        this.start,
        this.end,
    });

    factory Time.fromJson(Map<String, dynamic> json) => Time(
        start: json["start"],
        end: json["end"],
    );

    Map<String, dynamic> toJson() => {
        "start": start,
        "end": end,
    };
}
