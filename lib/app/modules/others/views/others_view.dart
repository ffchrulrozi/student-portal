import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/others_controller.dart';

class OthersView extends GetView<OthersController> {
  const OthersView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OthersView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OthersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
