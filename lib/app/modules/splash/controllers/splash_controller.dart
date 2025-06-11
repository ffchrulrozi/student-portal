import 'package:get/get.dart';
import 'package:student_portal/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    Future.delayed(
      Duration(seconds: 2),
      () => Get.offNamed(Routes.ONBOARDING),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
