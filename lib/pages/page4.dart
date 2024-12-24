//pasar una variable por modalroute (statefulw) si no pasa se asigna valor
//el metodo es igual al de (statelessw)

import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    final a1 = ModalRoute.of(context)?.settings.arguments as String? ??
        "pagina 4 (no paso la variable y se puso la predeterminada)";
    return Scaffold(
      appBar: AppBar(
        title: Text(a1),
      ),
    );
  }
}
