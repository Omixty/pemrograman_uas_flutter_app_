import 'package:flutter/material.dart';
import 'package:pemrograman_uas_flutter_app/home_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        home: homePage()
    );
  }
}