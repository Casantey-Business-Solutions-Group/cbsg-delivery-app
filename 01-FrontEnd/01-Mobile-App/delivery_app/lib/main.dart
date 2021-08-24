import 'package:delivery_app/views/HomeView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppEntry());
}

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
