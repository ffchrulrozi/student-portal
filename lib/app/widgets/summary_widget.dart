import 'package:flutter/material.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

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