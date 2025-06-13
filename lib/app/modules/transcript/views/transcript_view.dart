import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student_portal/app/modules/transcript/controllers/transcript_controller.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/app/utils/helper/divider_helper.dart';
import 'package:student_portal/app/widgets/summary_widget.dart';
import 'package:student_portal/assets/assets.gen.dart';
import 'package:student_portal/app/widgets/table_cell_widget.dart';

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
                                TableCellWidget("Subject",
                                    isHeader: true, isLeft: true),
                                TableCellWidget("SKS", isHeader: true),
                                TableCellWidget("Score", isHeader: true),
                                TableCellWidget("Grade", isHeader: true),
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
                                      TableCellWidget(transcript.subject,
                                          isLeft: true),
                                      TableCellWidget(transcript.credit),
                                      TableCellWidget(transcript.score),
                                      TableCellWidget(transcript.grade),
                                    ]);
                              }),
                              TableRow(children: [
                                TableCellWidget("",
                                    isHeader: true, isLeft: true),
                                TableCellWidget(semester.totalCredit,
                                    isHeader: true),
                                TableCellWidget(semester.avgScore,
                                    isHeader: true),
                                TableCellWidget(semester.avgGrade,
                                    isHeader: true),
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
