import 'package:fl1/pages/page1.dart';
import 'package:fl1/pages/page2.dart';
import 'package:fl1/pages/page3.dart';
import 'package:fl1/pages/page4.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: Page1()
      initialRoute: "/1",
      routes: {
        "/1": (BuildContext context) {
          return Page1();
        },
        "/2": (BuildContext context) {
          return Page2();
        },
        "/3": (BuildContext context) {
          return Page3();
        },
        "/4": (BuildContext context) {
          return Page4();
        }
      },
    );
  }
}
