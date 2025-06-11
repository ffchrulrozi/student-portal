import 'package:get/get.dart';
import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/routes/app_pages.dart';

class OnboardingController extends BaseController {
  var screenIndex = 0;
  
  changeScreen(index) {
    screenIndex = index;
    update();
  }




  void goToLoginPage(){
    Get.offNamed(Routes.LOGIN);
  }
}
