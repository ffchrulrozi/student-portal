import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/modules/dashboard/models/home_news_model.dart';
import 'package:student_portal/assets/assets.gen.dart';

class DashboardController extends BaseController {
  int screenIndex = 0;
  List<HomeNews> homeNews = [
    HomeNews(
        img: Assets.lib.assets.img.news1.path,
        title: "National Competitions Cup",
        desc: "Eu eiusmod aute do ad.",
        updatedat: "june, 11 2025"),
    HomeNews(
        img: Assets.lib.assets.img.news2.path,
        title: "Gradution August 2025 Periode",
        desc: "Pariatur sit excepteur dolor ad.",
        updatedat: "june, 12 2025"),
    HomeNews(
        img: Assets.lib.assets.img.news3.path,
        title: "Scholarship Program for Poor Cats",
        desc: "Nisi cillum ea excepteur et nisi esse ullamco.",
        updatedat: "june, 13 2025"),
    HomeNews(
        img: Assets.lib.assets.img.news4.path,
        title: "Catspedia Team Got Gold Medal!",
        desc: "Est duis proident excepteur reprehenderit.",
        updatedat: "june, 14 2025"),
  ];

  void changeScreen(index) {
    screenIndex = index;
    update();
  }
}
