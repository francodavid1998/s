import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3(
      {super.key,
      required this.a1,
      required this.a2,
      required this.a3,
      required this.a4,
      required this.a5,
      required this.a6,
      required this.a7,
      required this.a8});

  final String a1;
  final String a2;
  final String a3;
  final String a4;
  final String a5;
  final String a6;
  final String a7;
  final String a8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(a1),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  _on(context);
                },
                child: Text("presiona")),
            Text(a2),
            Text(a3),
            Text(a4),
            Text(a5),
            Text(a6),
            Text(a7),
            Text(a8),
          ],
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/page4");
  }
}
