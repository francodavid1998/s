import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key, required this.a1});

  final String a1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(a1),
      ),
    );
  }
}
