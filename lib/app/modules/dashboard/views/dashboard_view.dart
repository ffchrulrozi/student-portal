import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:student_portal/app/modules/dashboard/views/home_view.dart';
import 'package:student_portal/app/modules/dashboard/views/news_view.dart';
import 'package:student_portal/app/modules/dashboard/views/profile_view.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hi, Fachrul',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            h(2),
          ],
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: IndexedStack(
            index: controller.screenIndex,
            children: [
              HomeView(controller),
              NewsView(),
              ProfileView(),
            ],
          ),
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
