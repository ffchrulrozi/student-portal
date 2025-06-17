import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        body: Stack(
          children: [
            Padding(
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
                              name: "student_id",
                              decoration: InputDecoration(
                                hintText: "Student ID",
                              ),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                    errorText: "This field is required"),
                              ]),
                            ),
                            v(2),
                            Obx(
                              () => FormBuilderTextField(
                                name: "password",
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  suffix: InkWell(
                                    onTap: () =>
                                        controller.isPasswordObscure.value =
                                            !controller.isPasswordObscure.value,
                                    child: Icon(
                                        controller.isPasswordObscure.value
                                            ? Icons.lock
                                            : Icons.lock_open),
                                  ),
                                ),
                                obscureText: controller.isPasswordObscure.value,
                                validator: FormBuilderValidators.compose([
                                  FormBuilderValidators.required(
                                      errorText: "This field is required"),
                                ]),
                              ),
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
              ),
            ),
            if (controller.isLoading)
              AbsorbPointer(
                absorbing: true,
                child: Container(
                  color: Color.fromARGB(150, 0, 0, 0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              )
          ],
        ),
      );
    });
  }
}
