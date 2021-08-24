import 'package:delivery_app/components/ButtonComponent.dart';
import 'package:delivery_app/util/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginView.dart';
import 'SignUpView.dart';

class GettingStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: kPrimaryLightColor,
                child: Container(
                  padding: EdgeInsets.all(50),
                  child: Image(
                    image: AssetImage('assets/images/boat.png'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Click-Order-Get',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 28,
                        color: kPrimaryTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Welcome to your one-stop destination for all your needs.',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: kPrimaryTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Be assured that all your needs will be met here.',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: kPrimaryTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Are you ready?.',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: kPrimaryTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ButtonComponent(
                      borderRadius: 5,
                      // horizontalPadding: 120,
                      backgroundColor: kPrimaryDarkColor,
                      label: 'Let\'s Get Started!',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpView(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have an account already?',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: kPrimaryTextColor,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ),
                            );
                          },
                          child: Text(
                            'Log in',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                              color: kPrimaryDarkColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By continuing, you agree to our ',
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: kPrimaryTextColor,
                  ),
                ),
                Text(
                  'Terms and Conditions and Privacy Policy.',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: kPrimaryTextColor,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ],
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
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
