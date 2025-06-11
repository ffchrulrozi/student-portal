
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';

class HomeFeatureWidget extends StatelessWidget {
  const HomeFeatureWidget(
      {required this.title,
      required this.icon,
      required this.color,
      required this.route,
      super.key});

  final String title;
  final IconData icon;
  final Color color;
  final String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(route),
      child: Container(
        width: 125,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
            v(1),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}