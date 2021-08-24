import 'package:delivery_app/components/GenericCardComponent.dart';
import 'package:delivery_app/components/TitleBarComponent.dart';
import 'package:delivery_app/util/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kPrimaryLightColor,
      // bottomNavigationBar: ClipPath(
      //   clipper: CustomClipPath(),
      //   child: Container(
      //     height: 120,
      //     color: Colors.white,
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Title bar
                TitleBarComponent(
                  title: 'Welcome Home',
                  titleColor: kPrimaryDarkColor,
                  left: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.menu_rounded,
                      size: 25,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                  right: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.card_giftcard_outlined,
                      size: 25,
                      color: kPrimaryDarkColor,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 10,
                ),
                //Statistics Card
                GenericCardComponent(
                  borderRadius: 10,
                  // backgroundColor: kPrimaryTextColor,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Track My Order(s)',
                          style: GoogleFonts.lato(
                            color: kPrimaryDarkColor,
                            fontWeight: FontWeight.bold,
                            // decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(
                          child: Divider(
                            thickness: 1.0,
                          ),
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/location.png',
                              height: 120,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '5',
                                    style: GoogleFonts.lato(
                                      color: kPrimaryTextColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'ORDERS',
                                    style: GoogleFonts.lato(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '3',
                                    style: GoogleFonts.lato(
                                      color: kPrimaryTextColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'PENDING',
                                    style: GoogleFonts.lato(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '1',
                                    style: GoogleFonts.lato(
                                      color: kPrimaryTextColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'DELIVERED',
                                    style: GoogleFonts.lato(
                                      color: kPrimaryDarkColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '1',
                                    style: GoogleFonts.lato(
                                      color: kPrimaryTextColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'ORDERS',
                                    style: GoogleFonts.lato(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  // var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 2,
      (size.height - 100),
      size.width,
      size.height,
    );
    // path.quadraticBezierTo(
    //     size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    // path.quadraticBezierTo(
    //     3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
