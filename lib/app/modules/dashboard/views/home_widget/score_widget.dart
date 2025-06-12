import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:student_portal/app/routes/app_pages.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.offNamed(Routes.TRANSCRIPT),
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: SizedBox(
          height: 180,
          width: 100.w(context),
          child: Column(
            children: [
              Container(
                width: 100.w(context),
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Row(children: [
                  Icon(
                    Icons.bar_chart,
                    color: Colors.blue,
                  ),
                  h(1),
                  Text(
                    "Transcripts",
                    style: text(context).bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Score"),
                            Text(
                              "3.21",
                              style: text(context)
                                  .headlineLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: ScoreBarWidget(),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScoreBarWidget extends StatelessWidget {
  const ScoreBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          topTitles: AxisTitles(),
          rightTitles: AxisTitles(),
          leftTitles: AxisTitles(),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
        ),
        barGroups: [
          BarChartGroupData(x: 1, barRods: [
            BarChartRodData(toY: 3.4, color: Colors.blue, width: 16),
          ]),
          BarChartGroupData(x: 2, barRods: [
            BarChartRodData(toY: 3.1, color: Colors.green, width: 16),
          ]),
          BarChartGroupData(x: 3, barRods: [
            BarChartRodData(toY: 2.9, color: Colors.orange, width: 16),
          ]),
          BarChartGroupData(x: 4, barRods: [
            BarChartRodData(toY: 4, color: Colors.red, width: 16),
          ]),
          BarChartGroupData(x: 5, barRods: [
            BarChartRodData(toY: 3.8, color: Colors.red, width: 16),
          ]),
          BarChartGroupData(x: 6, barRods: [
            BarChartRodData(toY: 3.3, color: Colors.red, width: 16),
          ]),
        ],
      ),
    );
  }
}
