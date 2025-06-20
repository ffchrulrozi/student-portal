import 'package:flutter/material.dart';
import 'package:student_portal/app/modules/home/controllers/home_controller.dart';
import 'package:student_portal/app/utils/ext/img_ext.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';
class ProfileWidget extends StatelessWidget {
  const ProfileWidget(this.controller, {super.key});
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              controller.profile.photo?.imgFromNetwork() ?? "",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          h(2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(controller.profile.name ?? "",
                  style: text(context).titleLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              Text("ID. ${controller.profile.studentId ?? ""}",
                  style:
                      text(context).titleSmall!.copyWith(color: Colors.white)),
              v(1),
              Text(
                controller.profile.major ?? "",
                style: text(context).titleSmall!.copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
