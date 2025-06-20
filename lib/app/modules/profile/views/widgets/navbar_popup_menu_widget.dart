import 'package:flutter/material.dart';
import 'package:student_portal/app/modules/profile/controllers/profile_controller.dart';

class NavbarPopupMenuWidget extends StatelessWidget {
  const NavbarPopupMenuWidget(this.controller, {super.key});
  final ProfileController controller;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'logout') {
          controller.logout();
        }
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          value: 'logout',
          child: Text('Logout'),
        ),
      ],
    );
  }
}
