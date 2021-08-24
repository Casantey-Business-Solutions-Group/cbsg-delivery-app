import 'package:delivery_app/util/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  final Function onTap;
  final double verticalPadding;
  final double horizontalPadding;
  final Color backgroundColor;
  final Color labelColor;
  final double fontSize;
  final double borderRadius;
  final BoxShadow boxShadow;
  final double offSetX;
  final double offSetY;
  final double spreadRadius;
  final double blurRadius;
  final Color shadowColor;

  ButtonComponent({
    @required this.label,
    @required this.onTap,
    this.verticalPadding,
    this.horizontalPadding,
    this.backgroundColor,
    this.labelColor,
    this.fontSize,
    this.borderRadius,
    this.boxShadow,
    this.blurRadius,
    this.offSetX,
    this.offSetY,
    this.shadowColor,
    this.spreadRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: (verticalPadding != null && verticalPadding > 0)
              ? verticalPadding
              : 10,
          horizontal: (horizontalPadding != null && horizontalPadding > 0)
              ? horizontalPadding
              : 20,
        ),
        decoration: BoxDecoration(
            color:
                backgroundColor != null ? backgroundColor : kPrimaryDarkColor,
            borderRadius:
                BorderRadius.circular(borderRadius != null ? borderRadius : 30),
            boxShadow: [
              BoxShadow(
                offset: Offset(
                  offSetX != null ? offSetX : 0.5,
                  offSetX != null ? offSetY : 0.5,
                ),
                blurRadius: blurRadius != null ? blurRadius : 1,
                spreadRadius: spreadRadius != null ? spreadRadius : 1,
                color: shadowColor != null ? shadowColor : Color(0xFFEEEEEE),
              ),
            ]),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.lato(
              color: labelColor != null ? labelColor : Colors.white,
              fontSize: (fontSize != null && fontSize > 0) ? fontSize : 20,
            ),
          ),
        ),
      ),
    );
  }
}
