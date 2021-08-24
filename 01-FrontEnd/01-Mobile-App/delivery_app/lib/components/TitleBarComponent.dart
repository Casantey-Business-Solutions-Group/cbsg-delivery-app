import 'package:delivery_app/util/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleBarComponent extends StatelessWidget {
  final Widget left;
  final Widget right;
  final String title;
  final Color titleColor;

  TitleBarComponent({
    this.left,
    this.right,
    @required this.title,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: (left != null) ? left : null,
          ),
        ),
        Expanded(
          flex: 4,
          child: Align(
            alignment: Alignment.center,
            child: (title != null)
                ? Text(
                    title,
                    style: GoogleFonts.quicksand(
                      color:
                          titleColor != null ? titleColor : kPrimaryTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  )
                : Text(
                    'Title',
                    style: GoogleFonts.quicksand(
                      color:
                          titleColor != null ? titleColor : kPrimaryTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: (right != null) ? right : null,
          ),
        ),
      ],
    );
  }
}
