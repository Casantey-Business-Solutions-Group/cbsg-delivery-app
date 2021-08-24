import 'dart:convert';

import 'package:delivery_app/components/ButtonComponent.dart';
import 'package:delivery_app/components/LoginTextFieldComponent.dart';
import 'package:delivery_app/components/ProgressDialog.dart';
import 'package:delivery_app/components/TopBarComponent.dart';
import 'package:delivery_app/model/UserModel.dart';
import 'package:delivery_app/services/NetworkUtility.dart';
import 'package:delivery_app/services/UtilityService.dart';
import 'package:delivery_app/util/Constants.dart';
import 'package:delivery_app/views/LoginView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  String name;
  String email;
  String password;

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
                    label: 'Log in',
                    iconFunction: () {
                      Navigator.of(context).pop();
                    },
                    labelFunction: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginView(),
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
                          'Sign up',
                          style: GoogleFonts.quicksand(
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        //Name Text Field
                        LoginTextFieldComponent(
                          controller: nameController,
                          onChange: (value) {
                            name = value;
                          },
                          prefixIcon: Icon(
                            Icons.account_box_outlined,
                            color: Colors.black54,
                          ),
                          hint: 'Name',
                          obscureText: false,
                          enableField: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //Email Text Field
                        LoginTextFieldComponent(
                          controller: emailController,
                          onChange: (value) {
                            email = value;
                          },
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
                          controller: passwordController,
                          onChange: (value) {
                            password = value;
                          },
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

                        //Login Button
                        ButtonComponent(
                          label: 'Sign up',
                          onTap: () {
                            //1. Validate fields
                            bool canProceed = isValidEntries();

                            //2. Send validated fields to the server
                            if (canProceed) {
                              UserModel model = UserModel(
                                name: name,
                                email: email,
                                password: password,
                              );
                              postUserData(context: context, dataModel: model);
                            }

                            //3. Upon successful response from server,
                            //   navigate to the OTP screen
                          },
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

  void postUserData({UserModel dataModel, BuildContext context}) async {
    try {
      showDialog(
        context: context,
        builder: (context) {
          return ProgressDialog(displayMessage: 'Please wait...');
        },
      );
      var jsonBody = jsonEncode(dataModel);
      NetworkUtility networkUtility = NetworkUtility();
      String data = await networkUtility.postData(
        url: "https://85d48697cba8.ngrok.io/user/addUser",
        body: jsonBody,
      );
      print(data);
      if (data == null || data == '[]' || data == '500' || data == '404') {
        new UtilityService().showMessage(
          context: context,
          message: 'An error has occurred. Please try again',
          icon: Icon(
            Icons.error_outline,
            color: kDarkOrangeShade,
          ),
        );
        Navigator.of(context, rootNavigator: true).pop();
      }
    } catch (e) {
      print('postUserData error: $e');
      new UtilityService().showMessage(
        context: context,
        message: 'An error has occurred. Please try again',
        icon: Icon(
          Icons.error_outline,
          color: kDarkOrangeShade,
        ),
      );
      Navigator.of(context, rootNavigator: true).pop();
    }
  }

  bool isValidEntries() {
    if (nameController.text.length == 0) {
      new UtilityService().showMessage(
        context: context,
        message: 'Name is required.',
        icon: Icon(
          Icons.error_outline,
          color: kDarkOrangeShade,
        ),
      );
      return false;
    } else if (emailController.text.length == 0 ||
        !emailController.text.contains("@") ||
        !emailController.text.contains(".")) {
      new UtilityService().showMessage(
        context: context,
        message: 'Invalid email entered.',
        icon: Icon(
          Icons.error_outline,
          color: kDarkOrangeShade,
        ),
      );
      return false;
    } else if (passwordController.text.length < 4) {
      new UtilityService().showMessage(
        context: context,
        message: 'Password must be 4 or characters long.',
        icon: Icon(
          Icons.error_outline,
          color: kDarkOrangeShade,
        ),
      );
      return false;
    } else {
      return true;
    }
  }

  // void _showMessage({String message, Icon icon}) {
  //   if (!mounted) return;
  //   showFlash(
  //       context: context,
  //       duration: Duration(seconds: 3),
  //       builder: (_, controller) {
  //         return Flash(
  //           controller: controller,
  //           position: FlashPosition.bottom,
  //           style: FlashStyle.grounded,
  //           child: FlashBar(
  //             icon: icon,
  //             message: Text(message),
  //           ),
  //         );
  //       });
  // }
}
