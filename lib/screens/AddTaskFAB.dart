import 'package:flutter/material.dart';

class Addtaskfab extends StatelessWidget {
  const Addtaskfab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print("Agragar tarea");
      },
      child: Icon(Icons.add),
    );
  }
}
