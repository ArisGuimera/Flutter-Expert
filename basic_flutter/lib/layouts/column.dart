import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 194, 2, 228),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hola, soy Aris "),
          Text("Hola, soy Aris"),
          Text("Hola, soy Aris"),
          Text("Hola, soy Aris"),
          Text("Hola, soy Aris"),
          Text("Hola, soy Aris"),
          Text("Hola, soy Aris"),
          Text("Hola, soy Aris"),
        ],
      ),
    );
  }
}
