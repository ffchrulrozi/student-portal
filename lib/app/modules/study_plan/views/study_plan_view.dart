import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/study_plan_controller.dart';

class StudyPlanView extends GetView<StudyPlanController> {
  const StudyPlanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudyPlanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StudyPlanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
