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
      //home: Page1(),
      initialRoute: "/page1",
      routes: {
        "/page1": (BuildContext context) {
          return Page1(
            a1: 'page 1',
            a2: 'pop',
          );
        },
        "/page2": (BuildContext context) {
          return Page2(
            a1: 'page 2',
            a2: 'pop',
          );
        },
        "/page3": (BuildContext context) {
          return Page3(
            a1: 'page 3',
            a2: 'argumento 2',
            a3: 'argumento 1',
            a4: 'argumento 4',
            a5: 'argumento 5',
            a6: 'argumento 6',
            a7: 'argumento 7',
            a8: 'argumento 8',
          );
        },
        "/page4": (BuildContext contex) {
          return Page4(
            a1: 'page4',
          );
        }
      },
    );
  }
}
