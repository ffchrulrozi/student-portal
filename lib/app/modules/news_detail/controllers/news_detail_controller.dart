import 'package:get/get.dart';
import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/modules/news/models/news_detail.dart';

class NewsDetailController extends BaseController {
  late NewsDetail newsDetail = NewsDetail();

  @override
  void onInit() {
    super.onInit();
    int id = int.parse(Get.parameters["id"] ?? '0');
    getData(id);
  }

  void getData(int id) async {
    if (id == 0) return;

    var response = await apiSvc.get(
        endPoint: "/studentportal-news/$id",
        fromJson: (data) => NewsDetail.fromJson(data));

    newsDetail = response.data!;
    update();
  }
}
