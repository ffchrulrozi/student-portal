import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/routes/app_pages.dart';

class LoginController extends BaseController {
  final formKey = GlobalKey<FormBuilderState>();

  void login() {
    Get.offNamed(Routes.DASHBOARD);
  }
}
