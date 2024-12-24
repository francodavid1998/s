//pasa variables desde el costructor en statelessw

import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key, required this.a1, required this.a2});
  final String a1;
  final bool a2;

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
                child: Text(a2 ? "presiona" : "")),
          ],
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/3", arguments: "pagina 3");
  }
}
