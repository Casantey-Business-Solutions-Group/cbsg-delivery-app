import 'package:delivery_app/util/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBarComponent extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function iconFunction;
  final Function labelFunction;

  TopBarComponent({
    @required this.icon,
    @required this.label,
    @required this.iconFunction,
    @required this.labelFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: iconFunction,
              child: icon,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: labelFunction,
              child: Text(
                label,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  color: kPrimaryDarkColor,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
