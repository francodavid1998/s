//pasar 1 variable por modalroute

import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({
    super.key,
  });

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    //si no logra pasar la variable se pondra el predeterminado que asignes y no
    //habra error
    final a1 = ModalRoute.of(context)?.settings.arguments as String? ?? "valor";

    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 4"),
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
    Navigator.of(context).pushNamed("/page1");
  }
}
