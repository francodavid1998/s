//pasar 1 variable por modalroute

import 'package:flutter/material.dart';

//nose como pasar desde main a page 1 en modalroute
class Page1 extends StatefulWidget {
  const Page1({
    super.key,
  });

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 1"),
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
          ],
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/page2", arguments: "argumento pagina 2");
  }
}
