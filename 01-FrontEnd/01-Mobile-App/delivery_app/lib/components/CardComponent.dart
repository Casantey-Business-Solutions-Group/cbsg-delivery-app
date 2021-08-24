import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardComponent extends StatelessWidget {
  final double height;
  @required
  final String imageUrl;
  @required
  final String mainText;
  @required
  final String subText;

  const CardComponent({
    Key key,
    this.height,
    this.imageUrl,
    this.mainText,
    this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (height != null && height > 0) ? height : 200,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),
          // color: Colors.teal,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 2),
              color: Colors.black26,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ]),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mainText,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.black54,
              child: Text(
                subText,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
