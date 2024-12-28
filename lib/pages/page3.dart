import 'package:fl1/pages/page4.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    Argumentosp3 argumentospagina3 =
        ModalRoute.of(context)?.settings.arguments as Argumentosp3;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(argumentospagina3.a1),
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
            Text(argumentospagina3.a2.toString()),
            Text(argumentospagina3.a3),
            Text(argumentospagina3.a4.toString())
          ],
        ),
      ),
    );
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/4",
        arguments: Argumentosp4(a1: "pagina 4", a2: true, a3: 1, a4: false));
  }
}

class Argumentosp3 {
  String a1;
  double a2;
  String a3;
  double a4;
  Argumentosp3({
    required this.a1,
    required this.a2,
    required this.a3,
    required this.a4,
  });
}
