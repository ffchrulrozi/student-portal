import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/modules/home/views/widget/profile_widget.dart';
import 'package:student_portal/app/modules/home/views/widget/schedule_widget.dart';
import 'package:student_portal/app/modules/home/views/widget/score_widget.dart';
import 'package:student_portal/app/modules/home/views/widget/sks_widget.dart';
import 'package:student_portal/app/routes/app_pages.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';

import '../controllers/home_controller.dart';
import 'widget/feature_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return controller.isGetDataLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: () => controller.getAllData(),
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      height: 265,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileWidget(controller),
                          v(3),
                          Row(
                            children: [
                              Expanded(flex: 2, child: SksWidget()),
                              h(2),
                              Expanded(flex: 5, child: ScheduleWidget()),
                            ],
                          ),
                          v(3),
                          ScoreWidget(),
                          v(5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              HomeFeatureWidget(
                                title: "Progress",
                                icon: Icons.show_chart_outlined,
                                color: Colors.lightGreen,
                                route: Routes.PROGRESS,
                              ),
                              HomeFeatureWidget(
                                title: "Presence",
                                icon: Icons.attractions,
                                color: Colors.amber,
                                route: Routes.PRESENCE,
                              ),
                              HomeFeatureWidget(
                                title: "Study Plan",
                                icon: Icons.calendar_month,
                                color: Colors.grey,
                                route: Routes.STUDY_PLAN,
                              ),
                              HomeFeatureWidget(
                                title: "Others",
                                icon: Icons.ac_unit,
                                color: Colors.cyan,
                                route: Routes.OTHERS,
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
    });
  }
}
