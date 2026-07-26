import 'package:flutter/material.dart';
import 'package:task_list/screens/task_form_screen.dart';

class Addtaskfab extends StatelessWidget {
  const Addtaskfab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => TaskFormScreen(),
        );
      },
      child: Icon(Icons.add),
    );
  }
}
