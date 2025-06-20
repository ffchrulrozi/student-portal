import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/modules/login/models/login.dart';
import 'package:student_portal/app/routes/app_pages.dart';

class LoginController extends BaseController {
  final formKey = GlobalKey<FormBuilderState>();
  var isPasswordObscure = true.obs;
  var isLoading = false;

  void login() async {
    final form = formKey.currentState;
    if (form != null && form.saveAndValidate()) {
      isLoading = true;
      update();

      final String studentId = form.value["student_id"];
      final String password = form.value["password"];

      var response = await apiSvc.post(
        endPoint: "/studentportal-login",
        data: {"student_id": studentId, "password": password},
        fromJson: (data) => Login.fromJson(data),
      );

      if (response.statusCode == 200) {
        Get.offAllNamed(Routes.DASHBOARD);
      } else if (response.statusCode == 404) {
        Get.snackbar("Login failed", "User ID or Password is incorrect.",
            snackPosition: SnackPosition.BOTTOM);
      } else {
        Get.snackbar("Login failed", response.message ?? "",
            snackPosition: SnackPosition.BOTTOM);
      }

      isLoading = false;
      update();
    }
  }
}
