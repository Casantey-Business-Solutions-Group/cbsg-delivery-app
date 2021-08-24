import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

class UtilityService {
  void showMessage({String message, Icon icon, BuildContext context}) {
    // if (!mounted) return;
    showFlash(
        context: context,
        duration: Duration(seconds: 3),
        builder: (_, controller) {
          return Flash(
            controller: controller,
            position: FlashPosition.bottom,
            style: FlashStyle.grounded,
            child: FlashBar(
              icon: icon,
              message: Text(message),
            ),
          );
        });
  }
}
