//pasar 1 variable por modalroute

import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({
    super.key,
  });

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    //si no logra pasar la variable causa error
    final a1 = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text("page2"),
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
                child: Text(a1)),
          ],
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/page3", arguments: "argumento pagina 3");
  }
}
