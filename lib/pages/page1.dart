import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key, required this.a1, required this.a2});

  final String a1;
  final String a2;

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
                child: Icon(Icons.star)),
            Text(a2)
          ],
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/page2");
  }
}
