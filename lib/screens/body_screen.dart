import 'package:flutter/material.dart';
import 'package:task_list/data/data.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        final estado = task["estado"] as EstadoTask;

        return Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Icon(
              estado == EstadoTask.terminado
                  ? Icons.check_circle
                  : Icons.circle_outlined,
              color: estado == EstadoTask.terminado
                  ? Colors.green
                  : Colors.grey,
            ),
            title: Text(task["titulo"]),
            subtitle: Text(task["descripcion"]),
          ),
        );
      },
    );
    ;
  }
}
