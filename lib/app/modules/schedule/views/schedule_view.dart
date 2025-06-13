import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_portal/app/modules/schedule/controllers/schedule_controller.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScheduleController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(title: Text("Schedule")),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 50),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: controller.daysx.entries.map((d) {
                return Card(
                  color: Colors.white,
                  elevation: 3,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          d.key,
                          style: text(context).titleMedium,
                        ),
                        v(1),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: d.value.map((subject) {
                            return Container(
                                margin: EdgeInsets.only(bottom: 20),
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  border: Border(
                                    left: BorderSide(
                                        color: Colors.blue, width: 5),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      subject.subject ?? "",
                                      style: text(context).titleMedium,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '${subject.day ?? ''}, ${subject.time?.start ?? ''} - ${subject.time?.end ?? ''}',
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Class ${subject.scheduleClass ?? ''}",
                                    ),
                                    Text(
                                      "Room : ${subject.room ?? ''}",
                                    ),
                                    Text(
                                      "By. ${subject.lecturer ?? ''}",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                ));
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      );
    });
  }
}
