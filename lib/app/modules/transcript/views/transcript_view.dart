import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transcript_controller.dart';

class TranscriptView extends GetView<TranscriptController> {
  const TranscriptView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TranscriptView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TranscriptView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
