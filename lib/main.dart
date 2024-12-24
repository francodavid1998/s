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
      //home: P1()
      initialRoute: "/page1",
      routes: {
        "/page1": (BuildContext context) {
          return Page1();
        },
        "/page2": (BuildContext context) {
          return Page2();
        },
        "/page3": (BuildContext context) {
          return Page3();
        },
        "/page4": (BuildContext context) {
          return Page4();
        },
      },
    );
  }
}
