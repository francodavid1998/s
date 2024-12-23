//metodo sin el
//   @override
//  void initState() {
//    super.initState();
//    a1 = widget.a1;
//  }

import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  final String a1;
  final String a2;
  final String a3;
  final String a4;

  const Page3(
      {super.key,
      required this.a1,
      required this.a2,
      required this.a3,
      required this.a4});

  @override
  State<Page3> createState() => _P1State();
}

class _P1State extends State<Page3> {
  late String a1;
  late String a2;
  late String a3;
  late String a4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.a1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  _on(context);
                },
                child: Text("presiona")),
            Text(widget.a2),
            Text(widget.a3),
            Text(widget.a4)
          ],
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/page4");
  }
}
