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
          return Page1(
            a1: 'page1',
            a2: 'argumento 2',
            a3: 'argumento 3',
            a4: 'argumento 4',
          );
        },
        "/page2": (BuildContext context) {
          return Page2(
            a1: 'page2',
            a2: 'argumento 2',
            a3: 'argumento 3',
            a4: 'argumento 4',
          );
        },
        "/page3": (BuildContext context) {
          return Page3(
            a1: 'page3',
            a2: 'argumento 2',
            a3: 'argumento 3',
            a4: 'argumento 4',
          );
        },
        "/page4": (BuildContext context) {
          return Page4(
            a1: 'page4',
            a2: 'argumento 2',
            a3: 'argumento 3',
            a4: 'argumento 4',
          );
        },
      },
    );
  }
}
