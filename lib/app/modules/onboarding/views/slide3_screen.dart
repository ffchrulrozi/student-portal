import 'package:flutter/material.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';
import 'package:student_portal/assets/assets.gen.dart';

class Slide3Screen extends StatelessWidget {
  const Slide3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Assets.lib.assets.img.onboardingSlide3.path),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.hexagon_rounded),
          h(1),
          Icon(Icons.hexagon_rounded),
          h(1),
          Icon(Icons.hexagon_rounded, color: Colors.red),
        ]),
        v(2),
        Center(
          child: Text(
            "Your study's friendo",
            style: text(context).titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            "Use this app for all you need up to you graduate from this college.",
            style: text(context).bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
