import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:student_portal/app/modules/home/views/home_view.dart';
import 'package:student_portal/app/modules/news/views/news_view.dart';
import 'package:student_portal/app/modules/profile/views/profile_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.screenIndex,
          children: [
            HomeView(),
            NewsView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.screenIndex,
            onTap: (value) => controller.changeScreen(value),
            selectedItemColor: Colors.blue,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper), label: "News"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]),
      );
    });
  }
}
