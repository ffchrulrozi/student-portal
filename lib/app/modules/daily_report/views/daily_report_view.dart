import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/daily_report_controller.dart';

class DailyReportView extends GetView<DailyReportController> {
  const DailyReportView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DailyReportView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DailyReportView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
