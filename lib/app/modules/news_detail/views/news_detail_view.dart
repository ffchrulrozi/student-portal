import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

import '../controllers/news_detail_controller.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsDetailController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(title: Text("News")),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(20), child:  Column(children: [
            v(2),
            Text(
              controller.newsDetail.title ?? "",
              style: text(context).titleLarge,
            ),
            v(2),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                controller.env.baseHostUrl + (controller.newsDetail.img ?? ""),
                width: 200,
                height: 200,
              ),
            ),
            v(2), Html(data: controller.newsDetail.content ?? "")
          ]),
        ),
        ),
      );
    });
  }
}
