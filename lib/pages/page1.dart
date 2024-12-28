import 'package:fl1/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("pagina 1"),
              SizedBox(
                width: 30,
              ),
              FloatingActionButton(
                onPressed: () {
                  _on(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/2",
        arguments: Argumentosp2(
            a1: "pagina 2", a2: false, a3: "argumento 2", a4: "argumento 3"));
  }
}
