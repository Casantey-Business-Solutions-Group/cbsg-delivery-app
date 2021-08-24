import 'package:delivery_app/util/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldComponent extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function onChange;
  final bool isEnabled;
  final TextInputType keyboardType;
  final bool obscureText;

  const TextFieldComponent({
    Key key,
    @required this.controller,
    @required this.label,
    @required this.onChange,
    @required this.isEnabled,
    this.obscureText,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              fontSize: 14,
              color: kDarkOrangeShade,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.all(2),
          height: 40.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: kDarkOrangeShade,
              width: 0.2,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            controller: controller,
            onChanged: onChange,
            enabled: isEnabled,
            obscureText: obscureText ?? false,
            keyboardType:
                (keyboardType != null) ? keyboardType : TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: false,
              fillColor: Colors.white,
              // hintText: 'Application Type',
              contentPadding: const EdgeInsets.only(left: 5.0, bottom: 16),
              focusedBorder: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.white),
                borderRadius: new BorderRadius.circular(25.7),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.white70),
                borderRadius: new BorderRadius.circular(25.7),
              ),
            ),
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                fontSize: 14.0,
                height: 1.5,
                color: kDarkOrangeShade,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
