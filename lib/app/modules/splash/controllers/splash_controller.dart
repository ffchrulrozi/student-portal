import 'package:get/get.dart';
import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/routes/app_pages.dart';

class SplashController extends BaseController {

  @override
  void onReady() {
    super.onReady();

    Future.delayed(
      Duration(seconds: 2),
      () => Get.offNamed(Routes.ONBOARDING),
    );
  }

}
