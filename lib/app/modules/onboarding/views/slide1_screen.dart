import 'package:flutter/material.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';
import 'package:student_portal/assets/assets.gen.dart';

class Slide1Screen extends StatelessWidget {
  const Slide1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Assets.lib.assets.img.onboardingSlide1.path),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.hexagon_rounded, color: Colors.red),
          h(1),
          Icon(Icons.hexagon_rounded),
          h(1),
          Icon(Icons.hexagon_rounded),
        ]),
        v(2),
        Text(
          "Welcome to",
          style: text(context).headlineSmall,
        ),
        Text(
          "Student Portal",
          style: text(context).headlineLarge,
        ),
        v(2),
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.orange, width: 10),
            ),
          ),
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "University of Konohagakure",
            style: text(context).headlineSmall,
          ),
        ),
      ],
    );
  }
}
