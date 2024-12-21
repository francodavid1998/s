import 'package:flutter/material.dart';

import 'page2.dart';

class S extends StatelessWidget {
  const S({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("uso basico del navigator")),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            _showsecondpage(context);
          },
          child: Text("mostrar segunda pantalla"),
        ),
      ),
    );
  }

  void _showsecondpage(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return Page2(
        name: "marvin",
      );
    });
    Navigator.of(context).push(route);
  }
}
