//pasa variables desde el contructor en statefullw

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  final String a1;
  final bool a2;
  const Page1({super.key, required this.a1, required this.a2});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late String a1;
  late bool a2;

  @override
  void initState() {
    super.initState();
    a1 = widget.a1;
    a2 = widget.a2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(a1),
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
            OutlinedButton(
                onPressed: _on2, child: Text(a2 ? "prendido" : "apagado"))
          ],
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/2");
  }

  void _on2() {
    setState(() {
      a2 = !a2;
    });
  }
}
