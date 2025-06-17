import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/theme/app_theme.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await dotenv.load();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: appTheme,
    ),
  );
}
