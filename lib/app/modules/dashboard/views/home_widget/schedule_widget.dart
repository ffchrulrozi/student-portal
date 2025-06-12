import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_portal/app/routes/app_pages.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.offNamed(Routes.SCHEDULE),
      child: Container(
        height: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color.fromARGB(170, 236, 62, 39),
              ),
              width: 100.w(context),
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month, color: Colors.white),
                  h(1),
                  Text(
                    "Schedule",
                    style: text(context).bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              width: 100.w(context),
              color: Colors.white,
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Next agenda:",
                    style: TextStyle(
                        color: Color.fromARGB(170, 236, 62, 39),
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "20",
                              style: text(context).headlineLarge!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text("June", style: text(context).bodyLarge)
                          ],
                        ),
                      ),
                      h(2),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Algorithm and Structure Data",
                              softWrap: true,
                              overflow: TextOverflow.clip,
                              style: text(context)
                                  .bodyLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Row(children: [
                              Text("A",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              h(1),
                              Text("-"),
                              h(1),
                              Text("15:00 - 16:40"),
                            ]),
                            v(2),
                            Row(children: [
                              Text("By. "),
                              Text(
                                "Doremi Dora .Phd",
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ])
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
