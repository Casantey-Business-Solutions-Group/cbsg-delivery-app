import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget {
  final Color backgroundColor;
  final double padding;
  final double borderRadius;
  final Icon icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: icon,
      ),
    );
  }

  IconButtonComponent({
    this.backgroundColor,
    this.padding,
    this.borderRadius,
    this.icon,
    this.onTap,
  });
}
