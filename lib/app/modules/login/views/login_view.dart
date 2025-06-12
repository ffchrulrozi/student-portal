import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              Expanded(
                child: FormBuilder(
                  key: controller.formKey,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: text(context).titleLarge,
                        ),
                        Text("Login use your own account"),
                        v(10),
                        FormBuilderTextField(
                          name: "id",
                          decoration: InputDecoration(
                            hintText: "Student ID",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        v(2),
                        FormBuilderTextField(
                          name: "password",
                          decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: Icon(Icons.remove_red_eye)),
                        ),
                        v(3),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(100.h(context), 25),
                              backgroundColor: Colors.blue),
                          onPressed: () => controller.login(),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text("Forget your password? contact college's admin"),
            ],
          )),
    );
  }
}
