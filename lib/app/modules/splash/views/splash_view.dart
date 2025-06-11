import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/assets/assets.gen.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset(
      Assets.lib.assets.img.splash.path,
      width: 100.w(context),
      height: 100.h(context),
      fit: BoxFit.cover,
    ));
  }
}
