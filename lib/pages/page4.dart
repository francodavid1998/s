import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    Argumentosp4 argumentospagina4 =
        ModalRoute.of(context)?.settings.arguments as Argumentosp4;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentospagina4.a1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  _on(argumentospagina4);
                },
                child: Text(
                  argumentospagina4.a2
                      ? "nose porque termino"
                      : "escuchando a miguel gritar",
                  style: TextStyle(
                      color:
                          argumentospagina4.a2 ? Colors.orange : Colors.green),
                )),
            SizedBox(
              height: 200,
            ),
            OutlinedButton(
                onPressed: () {
                  _on2(argumentospagina4);
                },
                child: Text(
                  argumentospagina4.a3.toString(),
                  style: TextStyle(color: Colors.amber, fontSize: 40),
                )),
            SizedBox(
              height: 200,
            ),
            OutlinedButton(
                onPressed: () {
                  _on3(argumentospagina4);
                },
                child: Text(
                  "presiona",
                  style: TextStyle(color: Colors.brown[900]),
                ))
          ],
        ),
      ),
      backgroundColor: argumentospagina4.a4 ? Colors.blue : Colors.purple,
    );
  }

  void _on(Argumentosp4 argumentospagina4) {
    setState(() {
      argumentospagina4.a2 = !argumentospagina4.a2;
    });
  }

  _on2(Argumentosp4 argumentospagina4) {
    setState(() {
      if (argumentospagina4.a3 == 1) {
        (argumentospagina4.a3 = argumentospagina4.a3 * 1.2);
      } else {
        (argumentospagina4.a3 = argumentospagina4.a3 * 1.2);
      }
    });
  }

  void _on3(Argumentosp4 argumentospagina4) {
    setState(() {
      argumentospagina4.a4 = !argumentospagina4.a4;
    });
  }
}

class Argumentosp4 {
  String a1;
  bool a2;
  double a3;
  bool a4;
  Argumentosp4({
    required this.a1,
    required this.a2,
    required this.a3,
    required this.a4,
  });
}
