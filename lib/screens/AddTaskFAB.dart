import 'package:flutter/material.dart';
import 'package:task_list/screens/task_form_screen.dart';

class Addtaskfab extends StatelessWidget {
  final VoidCallback onTaskAdded;
  const Addtaskfab({super.key, required this.onTaskAdded});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final result = await showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => TaskFormScreen(),
        );
        if (result == true) {
          onTaskAdded();
        }
      },
      child: Icon(Icons.add),
    );
  }
}
