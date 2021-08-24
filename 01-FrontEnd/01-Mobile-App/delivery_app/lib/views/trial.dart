import 'package:delivery_app/components/ButtonComponent.dart';
import 'package:delivery_app/components/LoginTextFieldComponent.dart';
import 'package:delivery_app/components/TopBarComponent.dart';
import 'package:delivery_app/util/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool pillSelected1 = false;
  bool pillSelected2 = false;
  bool pillSelected3 = false;

  var _controller = TextEditingController();
  String textValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TopBarComponent(
                    label: 'Sign Up',
                    icon: Icon(Icons.navigate_before),
                    labelFunction: () {
                      print('Label function tapped');
                    },
                    iconFunction: () {
                      print('Icon function tapped');
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 2),
                              blurRadius: 1,
                              spreadRadius: 2,
                              color: Color(0xFFEEEEEE),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/images/img.jpeg"),
                              fit: BoxFit.cover),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "Special Salad",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.black26,
                              child: Text(
                                "Very affordable",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Button pill
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (pillSelected1) {
                              setState(() {
                                pillSelected1 = false;
                              });
                            } else {
                              setState(() {
                                pillSelected1 = true;
                              });
                            }
                          },
                          child: ButtonPill(
                            pillSelected: pillSelected1,
                            text: 'Near me',
                            icon: Icon(
                              Icons.near_me_outlined,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (pillSelected2) {
                              setState(() {
                                pillSelected2 = false;
                              });
                            } else {
                              setState(() {
                                pillSelected2 = true;
                              });
                            }
                          },
                          child: ButtonPill(
                            pillSelected: pillSelected2,
                            text: 'Delivery',
                            icon: Icon(
                              Icons.delivery_dining,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (pillSelected3) {
                              setState(() {
                                pillSelected3 = false;
                              });
                            } else {
                              setState(() {
                                pillSelected3 = true;
                              });
                            }
                          },
                          child: ButtonPill(
                            pillSelected: pillSelected3,
                            text: 'Best Rated',
                            icon: Icon(
                              Icons.star_rate_outlined,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Horizontal scroll
                  // Container(
                  //   height: 200,
                  //   // width: 600,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       CardComponent(
                  //         height: 180,
                  //         mainText: 'Fruit Salad',
                  //         subText: 'The best in town',
                  //         imageUrl: 'assets/images/img.jpeg',
                  //       ),
                  //       CardComponent(
                  //         height: 180,
                  //         mainText: 'Fruit Salad',
                  //         subText: 'The best in town',
                  //         imageUrl: 'assets/images/img2.jpeg',
                  //       ),
                  //       CardComponent(
                  //         height: 180,
                  //         mainText: 'Fruit Salad',
                  //         subText: 'The best in town',
                  //         imageUrl: 'assets/images/img.jpeg',
                  //       ),
                  //       CardComponent(
                  //         height: 180,
                  //         mainText: 'Fruit Salad',
                  //         subText: 'The best in town',
                  //         imageUrl: 'assets/images/img2.jpeg',
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blueGrey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.deepOrangeAccent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ButtonComponent(
                    label: 'Log In',
                    onTap: () {
                      print('Login tapped');
                    },
                    backgroundColor: kDarkOrangeShade,
                    borderRadius: 30,
                    // labelColor: Colors.black,
                    fontSize: 18,
                    verticalPadding: 15,
                    horizontalPadding: 120,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // TextFieldComponent(
                  //   isEnabled: true,
                  //   label: 'Type text here',
                  //   obscureText: false,
                  //   keyboardType: TextInputType.text,
                  //   controller: _controller,
                  //   onChange: (e) {
                  //     textValue = e;
                  //   },
                  // ),

                  Icon(Icons.email_outlined),

                  SizedBox(
                    height: 20,
                  ),

                  LoginTextFieldComponent(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black54,
                    ),
                    hint: 'Email',
                    enableField: true,
                    obscureText: false,
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

class ButtonPill extends StatelessWidget {
  final bool pillSelected;
  final Icon icon;
  final String text;

  ButtonPill({
    @required this.pillSelected,
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: (pillSelected) ? kYellowShade : Color(0xFFEEEEEE),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: icon,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Text(
                text,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      // Row(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     Container(
      //       child: Icon(
      //         Icons.near_me_outlined,
      //       ),
      //     ),
      //     Container(
      //       child: Text('Near me'),
      //     ),
      //   ],
      // ),
    );
  }
}
