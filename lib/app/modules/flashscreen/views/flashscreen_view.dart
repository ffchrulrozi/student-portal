import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flashscreen_controller.dart';

class FlashscreenView extends GetView<FlashscreenController> {
  const FlashscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlashscreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FlashscreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
