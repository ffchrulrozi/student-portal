import 'package:flutter/material.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';
import 'package:student_portal/assets/assets.gen.dart';

class Slide2Screen extends StatelessWidget {
  const Slide2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Assets.lib.assets.img.onboardingSlide2.path),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.hexagon_rounded),
          h(1),
          Icon(Icons.hexagon_rounded, color: Colors.red),
          h(1),
          Icon(Icons.hexagon_rounded),
        ]),
        v(2),
        Center(
          child: Text(
            "One Gate Solution",
            style: text(context).titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            "See your transcript, presence, schedule, get latest news, choose study plan, and more in one app.",
            style: text(context).bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
