import 'package:delivery_app/components/ButtonComponent.dart';
import 'package:delivery_app/components/LoginTextFieldComponent.dart';
import 'package:delivery_app/components/TopBarComponent.dart';
import 'package:delivery_app/views/SignUpView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //Top bar component
                  TopBarComponent(
                    icon: Icon(
                      Icons.navigate_before,
                    ),
                    label: 'Sign Up',
                    iconFunction: () {
                      Navigator.of(context).pop();
                    },
                    labelFunction: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpView(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),

                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Login Text
                        Text(
                          'Log in',
                          style: GoogleFonts.quicksand(
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        //Email Text Field
                        LoginTextFieldComponent(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black54,
                          ),
                          hint: 'Email',
                          obscureText: false,
                          enableField: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //Password Text Field
                        LoginTextFieldComponent(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.black54,
                          ),
                          hint: 'Password',
                          obscureText: true,
                          enableField: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        //Forgot password text
                        Text(
                          'Forgot your password?',
                          style: GoogleFonts.quattrocento(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        //Login Button
                        ButtonComponent(
                          label: 'Log In',
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
