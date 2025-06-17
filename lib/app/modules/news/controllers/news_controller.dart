import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/modules/news/models/news.dart';

class NewsController extends BaseController {
  var _isLastData = false;

  late final pagingController = PagingController<int, Datum>(
      getNextPageKey: (state) =>
          !_isLastData ? (state.keys?.last ?? 0) + 1 : null,
      fetchPage: (pageKey) => getData(pageKey));

  Future<List<Datum>> getData(int pageKey) async {
    var response = await apiSvc.list<News>(
      endPoint: '/studentportal-news',
      params: {"page": pageKey},
      fromJson: (data) => News.fromJson(data),
    );

    _isLastData = (response.data?.length ?? 0) < 5;

    return response.data!;
  }
}
