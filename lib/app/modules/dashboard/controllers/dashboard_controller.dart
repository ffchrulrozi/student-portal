import 'package:student_portal/app/base/base_controller.dart';

class DashboardController extends BaseController {
  int screenIndex = 0;

  void changeScreen(index) {
    screenIndex = index;
    update();
  }
}
