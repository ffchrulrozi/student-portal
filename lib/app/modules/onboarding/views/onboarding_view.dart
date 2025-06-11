import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/modules/onboarding/views/slide1_screen.dart';
import 'package:student_portal/app/modules/onboarding/views/slide2_screen.dart';
import 'package:student_portal/app/modules/onboarding/views/slide3_screen.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';
import 'package:student_portal/assets/assets.gen.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.only(left: 25, top: 100, right: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 75.h(context),
                  child: IndexedStack(
                    index: controller.screenIndex,
                    children: [
                      Slide1Screen(),
                      Slide2Screen(),
                      Slide3Screen(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    controller.screenIndex == 0
                        ? Container()
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () => controller
                                .changeScreen(controller.screenIndex - 1),
                            child: Text(
                              "Prev",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                    Spacer(),
                    controller.screenIndex < 2
                        ? ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                            onPressed: () => controller
                                .changeScreen(controller.screenIndex + 1),
                            child: Text(
                              "Next",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal),
                            onPressed: () => controller.goToLoginPage(),
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
