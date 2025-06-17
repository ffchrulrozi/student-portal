import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:student_portal/app/modules/news/controllers/news_controller.dart';
import 'package:student_portal/app/modules/news/models/news.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('NewsView'),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: PagingListener(
              controller: controller.pagingController,
              builder: (context, state, fetchNextPage) =>
                  PagedListView<int, Datum>(
                state: state,
                fetchNextPage: fetchNextPage,
                builderDelegate: PagedChildBuilderDelegate(
                  itemBuilder: (context, item, index) => Container(
                      margin:
                          EdgeInsets.only(bottom: 25, top: index == 0 ? 25 : 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              controller.env.baseHostUrl + (item.img ?? ""),
                              width: 120,
                              height: 120,
                            ),
                          ),
                          h(1.5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.title ?? "",
                                    style: text(context).titleMedium),
                                v(0.5),
                                Text(item.summary ?? ""),
                                v(0.5),
                                Text(item.updatedAt ?? ""),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
