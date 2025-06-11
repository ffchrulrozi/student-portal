import 'package:get/get.dart';
import 'package:student_portal/app/modules/onboarding/views/slide1_screen.dart';
import 'package:student_portal/app/modules/onboarding/views/slide2_screen.dart';
import 'package:student_portal/app/modules/onboarding/views/slide3_screen.dart';
import 'package:student_portal/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  var screenIndex = 0;
  
  changeScreen(index) {
    screenIndex = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void goToLoginPage(){
    Get.offNamed(Routes.LOGIN);
  }
}
