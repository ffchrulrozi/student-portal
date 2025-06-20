import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/modules/profile/models/profile.dart';

class HomeController extends BaseController {
  var profile = Profile();
  var isGetDataLoading = true;

  @override
  void onInit() {
    super.onInit();

    getAllData();
  }

  Future<void> getAllData() async {
    getProfile();
  }

  void getProfile() {
    isGetDataLoading = true;
    update();
    
    apiSvc
        .get(
            endPoint: "/studentportal-profile",
            fromJson: (data) => Profile.fromJson(data))
        .then((response) {
      profile = response.data!;
      isGetDataLoading = false;
      update();
    });
  }
}
