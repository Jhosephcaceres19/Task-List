import 'package:flutter/material.dart';
import 'package:task_list/data/data.dart';
import 'package:task_list/screens/delete_icon.dart';

// 1. Cambiamos a StatefulWidget
class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        final estado = task["estado"] as EstadoTask;

        return Card(
          margin: const EdgeInsets.all(10),
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
            trailing: DeleteIcon(
              onTapDelete: () {
                // 2. Usamos setState para decirle a Flutter que la lista 'tasks' cambió
                // y que debe volver a dibujar el ListView.builder
                setState(() {
                  eliminarTarea(task["titulo"]);
                });
              },
            ),
          ),
        );
      },
    ); // 3. Se eliminó el punto y coma duplicado que estaba abajo
  }
}
