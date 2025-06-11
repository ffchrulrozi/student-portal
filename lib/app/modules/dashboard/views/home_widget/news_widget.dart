import 'package:flutter/material.dart';
import 'package:student_portal/app/modules/dashboard/models/home_news_model.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

class HomeNewsWidget extends StatelessWidget {
  const HomeNewsWidget({required this.news, super.key});
  final HomeNews news;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Image.asset(
            news.img ?? "",
            width: 180,
            height: 100,
            fit: BoxFit.cover,
          ),
          Container(
            width: 180,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title ?? "",
                  style: text(context).titleMedium,
                ),
                Text(news.desc ?? ""),
                Text(news.updatedat ?? ""),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
