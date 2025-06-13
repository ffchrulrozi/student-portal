import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/modules/transcript/controllers/transcript_controller.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';
import 'package:student_portal/assets/assets.gen.dart';

class TranscriptView extends GetView<TranscriptController> {
  const TranscriptView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transcripts'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
          child: Column(
            children: [
              Image.asset(
                Assets.lib.assets.img.logo.path,
                width: 100,
                height: 100,
              ),
              v(3),
              SizedBox(
                width: 100.w(context),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.transcript.semesters?.length,
                  itemBuilder: (context, index) {
                    final semester = controller.transcript.semesters![index];
                    return ExpansionTile(
                      title: Text(semester.title ?? ""),
                      children: [
                        SizedBox(
                          width: 100.h(context),
                          child: Table(
                            border: TableBorder.all(),
                            columnWidths: {0: FixedColumnWidth(200)},
                            children: [
                              TableRow(children: [
                                TableCell("Subject",
                                    isHeader: true, isLeft: true),
                                TableCell("SKS", isHeader: true),
                                TableCell("Score", isHeader: true),
                                TableCell("Grade", isHeader: true),
                              ]),
                              ...semester.transcripts!.map((transcript) {
                                final bool isWarning =
                                    (transcript.score ?? 0) >= 2.5 &&
                                        (transcript.score ?? 0) < 2.7;
                                final bool isDanger =
                                    (transcript.score ?? 0) < 2.5;

                                return TableRow(
                                    decoration: BoxDecoration(
                                      color: isDanger
                                          ? Colors.redAccent
                                          : isWarning
                                              ? Colors.amberAccent
                                              : null,
                                    ),
                                    children: [
                                      TableCell(transcript.subject,
                                          isLeft: true),
                                      TableCell(transcript.credit),
                                      TableCell(transcript.score),
                                      TableCell(transcript.grade),
                                    ]);
                              }),
                              TableRow(children: [
                                TableCell("", isHeader: true, isLeft: true),
                                TableCell(semester.totalCredit, isHeader: true),
                                TableCell(semester.avgScore, isHeader: true),
                                TableCell(semester.avgGrade, isHeader: true),
                              ])
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              v(3),
              Row(
                children: [
                  SummaryWidget(
                      "of 144 Credits", controller.transcript.totalCredit),
                  SummaryWidget("Score", controller.transcript.avgScore),
                  SummaryWidget("Grade", controller.transcript.avgGrade),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TableCell extends StatelessWidget {
  const TableCell(this.value, {this.isHeader, this.isLeft, super.key});
  final dynamic value;
  final bool? isHeader;
  final bool? isLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Text(
        value?.toString() ?? "",
        textAlign: isLeft == true ? TextAlign.left : TextAlign.center,
        style: TextStyle(
          fontWeight: isHeader == true ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class SummaryWidget extends StatelessWidget {
  const SummaryWidget(this.label, this.value, {super.key});
  final String label;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          children: [
            Text(
              value?.toString() ?? "",
              style: text(context).headlineLarge,
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
