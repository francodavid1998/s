//variables pasadas por modalroute si no se pasa da error
//cree la clase Argumentosp2 que contiene los argumentos
//y cree la variable argumentospagina2 para la clase Argumentosp1
//statefullw = stateless, en este metodo de pase de variables

import 'package:fl1/pages/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    Argumentosp2 argumentospagina2 =
        ModalRoute.of(context)?.settings.arguments as Argumentosp2;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(argumentospagina2.a1),
              SizedBox(
                width: 30,
              ),
              OutlinedButton(
                  onPressed: () {
                    _on(context);
                  },
                  child: Text("presiona"))
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  _on2(argumentospagina2);
                },
                child: Text("presiona")),
            Icon(
              argumentospagina2.a2 ? Icons.star : Icons.add_link_sharp,
              color: argumentospagina2.a2 ? Colors.amber[900] : Colors.red[900],
            ),
            Text(argumentospagina2.a3),
            Text(argumentospagina2.a4)
          ],
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/3",
        arguments: Argumentosp3(
            a1: "pagina 3", a2: 100, a3: "argumento 2", a4: 1000000000));
  }

  void _on2(Argumentosp2 argumentospagina2) {
    setState(() {
      argumentospagina2.a2 = !argumentospagina2.a2;
    });
  }
}

class Argumentosp2 {
  String a1;
  bool a2;
  String a3;
  String a4;
  Argumentosp2({
    required this.a1,
    required this.a2,
    required this.a3,
    required this.a4,
  });
}
