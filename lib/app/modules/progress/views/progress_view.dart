import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/widgets/summary_widget.dart';
import 'package:student_portal/app/widgets/table_cell_widget.dart';
import 'package:student_portal/assets/assets.gen.dart';

import '../controllers/progress_controller.dart';

class ProgressView extends GetView<ProgressController> {
  const ProgressView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: 100.w(context),
        padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 50),
        child: Column(
          children: [
            Image.asset(
              Assets.lib.assets.img.logo.path,
              width: 100,
              height: 100,
            ),
            v(3),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Table(
                border: TableBorder.all(),
                columnWidths: {0: FixedColumnWidth(150)},
                defaultColumnWidth: FixedColumnWidth(60),
                children: [
                  TableRow(children: [
                    TableCellWidget("Subject", isHeader: true, isLeft: true),
                    TableCellWidget("1", isHeader: true),
                    TableCellWidget("2", isHeader: true),
                    TableCellWidget("3", isHeader: true),
                    TableCellWidget("4", isHeader: true),
                    TableCellWidget("5", isHeader: true),
                    TableCellWidget("6", isHeader: true),
                    TableCellWidget("7", isHeader: true),
                    TableCellWidget("8", isHeader: true),
                    TableCellWidget("9", isHeader: true),
                    TableCellWidget("10", isHeader: true),
                    TableCellWidget("11", isHeader: true),
                    TableCellWidget("12", isHeader: true),
                    TableCellWidget("13", isHeader: true),
                    TableCellWidget("14", isHeader: true),
                    TableCellWidget("MS", isHeader: true),
                    TableCellWidget("ES", isHeader: true),
                    TableCellWidget("CR", isHeader: true),
                    TableCellWidget("SC", isHeader: true),
                    TableCellWidget("GR", isHeader: true),
                  ]),
                  ...controller.progress.subjects!.map((subject) {
                    return TableRow(
                        decoration: BoxDecoration(
                          color: subject.isFailed == true ? Colors.red : null,
                        ),
                        children: [
                          TableCellWidget(subject.name, isLeft: true),
                          TableCellWidget(
                            subject.day?[0].homeWork,
                            isBlocked: subject.day?[0].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[1].homeWork,
                            isBlocked: subject.day?[1].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[2].homeWork,
                            isBlocked: subject.day?[2].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[3].homeWork,
                            isBlocked: subject.day?[3].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[4].homeWork,
                            isBlocked: subject.day?[4].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[5].homeWork,
                            isBlocked: subject.day?[5].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[6].homeWork,
                            isBlocked: subject.day?[6].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[7].homeWork,
                            isBlocked: subject.day?[7].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[8].homeWork,
                            isBlocked: subject.day?[8].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[9].homeWork,
                            isBlocked: subject.day?[9].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[10].homeWork,
                            isBlocked: subject.day?[10].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[11].homeWork,
                            isBlocked: subject.day?[11].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[12].homeWork,
                            isBlocked: subject.day?[12].isPresent,
                          ),
                          TableCellWidget(
                            subject.day?[13].homeWork,
                            isBlocked: subject.day?[13].isPresent,
                          ),
                          TableCellWidget(subject.midSemester),
                          TableCellWidget(subject.endSemester),
                          TableCellWidget(subject.credit),
                          TableCellWidget(subject.score),
                          TableCellWidget(subject.grade)
                        ]);
                  })
                ],
              ),
            ),
            v(3),
              Row(
                children: [
                  Spacer(),
                  SummaryWidget("Score", controller.progress.score),
                  SummaryWidget("Grade", controller.progress.grade),
                ],
              ),
            v(3),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Note:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                v(1),
                Row(children: [
                  Expanded(child: Text("CR")),
                  h(1),
                  Text(": "),
                  Expanded(flex: 4, child: Text("Credits")),
                  Spacer(),
                  Expanded(child: Text("HW")),
                  h(1),
                  Text(": "),
                  Expanded(flex: 4, child: Text("Home Work")),
                ]),
                Row(children: [
                  Expanded(child: Text("MS")),
                  h(1),
                  Text(": "),
                  Expanded(flex: 4, child: Text("Mid Semester")),
                  Spacer(),
                  Expanded(child: Text("ES")),
                  h(1),
                  Text(": "),
                  Expanded(flex: 4, child: Text("End Semester")),
                ]),
                Row(children: [
                  Expanded(child: Text("SC")),
                  h(1),
                  Text(": "),
                  Expanded(flex: 4, child: Text("Score")),
                  Spacer(),
                  Expanded(child: Text("GR")),
                  h(1),
                  Text(": "),
                  Expanded(flex: 4, child: Text("Grade")),
                ]),
                v(2),
                Row(children: [
                  Expanded(
                      child: Container(
                          width: 20, height: 20, color: Colors.black)),
                  h(1),
                  Text(": "),
                  Expanded(flex: 4, child: Text("Not Present")),
                  Spacer(),
                  Expanded(
                    child: Container(width: 20, height: 20, color: Colors.red),
                  ),
                  h(1),
                  Text(": "),
                  Expanded(flex: 4, child: Text("Failed")),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
