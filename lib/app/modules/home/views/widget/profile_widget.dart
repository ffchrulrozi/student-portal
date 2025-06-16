import 'package:flutter/material.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';
import 'package:student_portal/assets/assets.gen.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              Assets.lib.assets.img.me.path,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          h(2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Catti Ningrum",
                  style:
                      text(context).titleLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              Text("NIM. 7845112",
                  style:
                      text(context).titleSmall!.copyWith(color: Colors.white)),
              v(1),
              Text(
                "INFORMATIC ENGINEERING",
                style: text(context).titleSmall!.copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
