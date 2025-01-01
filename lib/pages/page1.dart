import 'package:fl1/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
              Column(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      _on(context);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      //nuevo, aparte de convertir todo a stateful
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "nombre"),
                controller: nametextcontroller,
              ),
              TextField(
                decoration: InputDecoration(labelText: "apellido"),
                controller: lastnametextcontroller,
              ),
              TextField(
                decoration: InputDecoration(labelText: "edad"),
                controller: agetextcontroller,
              ),
            ],
          ),
        ),
      ),

      //nuevo
    );
  }

  late TextEditingController nametextcontroller;
  late TextEditingController lastnametextcontroller;
  late TextEditingController agetextcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nametextcontroller = TextEditingController();

    lastnametextcontroller = TextEditingController();

    agetextcontroller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nametextcontroller.dispose();
    lastnametextcontroller.dispose();
    agetextcontroller.dispose();
  }

  void _on(BuildContext context) {
    Navigator.of(context).pushNamed("/2",
        arguments: Argumentosp2(
            a1: nametextcontroller.text,
            a2: true,
            a3: lastnametextcontroller.text,
            a4: agetextcontroller.text));
  }
}
