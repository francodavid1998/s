//pasar 1 variable por modalroute

import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({
    super.key,
  });

  @override
  State<Page3> createState() => _P1State();
}

class _P1State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    //si no logra pasar la variable se pondra el predeterminado que asignes y no
    //habra error
    final a1 = ModalRoute.of(context)?.settings.arguments as String? ?? "valor";
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 3"),
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
    Navigator.of(context).pushNamed("/page4", arguments: "argumento pagina 4");
  }
}
