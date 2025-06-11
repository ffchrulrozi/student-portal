import 'package:flutter/material.dart';
import 'package:student_portal/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:student_portal/app/modules/dashboard/views/home_widget/feature_widget.dart';
import 'package:student_portal/app/modules/dashboard/views/home_widget/news_widget.dart';
import 'package:student_portal/app/routes/app_pages.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';

class HomeView extends StatelessWidget {
  const HomeView(this.controller, {super.key});
  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.orange,
            padding: EdgeInsets.all(20),
            child: Text(
              "Information! New semester will begin start from august, 01 2025. Please pay for next semester bills and choose your study plan max on july, 21 2025.",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          v(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeFeatureWidget(
                title: "Achievement",
                icon: Icons.schedule,
                color: Colors.lightGreen,
                route: Routes.SCHEDULE,
              ),
              HomeFeatureWidget(
                title: "Presence",
                icon: Icons.calendar_month,
                color: Colors.amber,
                route: Routes.SCHEDULE,
              ),
              HomeFeatureWidget(
                title: "Schedule",
                icon: Icons.schedule,
                color: Colors.pinkAccent,
                route: Routes.SCHEDULE,
              )
            ],
          ),
          v(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeFeatureWidget(
                title: "Transcript",
                icon: Icons.schedule,
                color: Colors.purpleAccent,
                route: Routes.SCHEDULE,
              ),
              HomeFeatureWidget(
                title: "Study Plan",
                icon: Icons.calendar_month,
                color: Colors.grey,
                route: Routes.SCHEDULE,
              ),
              HomeFeatureWidget(
                title: "Others",
                icon: Icons.schedule,
                color: Colors.cyan,
                route: Routes.SCHEDULE,
              )
            ],
          ),
          v(5),
          Text(
            "NEWS",
            style: TextStyle(),
          ),
          Divider(),
          Container(
            height: 250,
            padding: EdgeInsets.only(bottom:10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.homeNews.length,
              itemBuilder: (context, index) => HomeNewsWidget(
                news: controller.homeNews[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}