import 'package:get/get.dart';
import 'package:student_portal/app/modules/home/controllers/home_controller.dart';
import 'package:student_portal/app/modules/news/controllers/news_controller.dart';
import 'package:student_portal/app/modules/profile/controllers/profile_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<NewsController>(() => NewsController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
