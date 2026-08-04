enum EstadoTask { pendiente, terminado }

final List<Map<String, dynamic>> tasks = [
  {
    "titulo": "Tarea1",
    "descripcion": "Es la primera tarea",
    "estado": EstadoTask.pendiente,
  },
  {
    "titulo": "Tarea2",
    "descripcion": "Es la segunda tarea",
    "estado": EstadoTask.terminado,
  },
];

//filtro de valores de una lista de map:

final pendiente = tasks
    .where((tasks) => tasks["estado"] == EstadoTask.pendiente)
    .toList();

final terminado = tasks
    .where((tasks) => tasks["estado"] == EstadoTask.terminado)
    .toList();

//eliminar un map de una lista

void eliminarTarea(String titulo) {
  tasks.removeWhere(
    (tasks) => tasks["titulo"].toString().toLowerCase() == "tarea1",
  );
}

// add tarea a la lista
void addTarea({
  required String titulo,
  required String descripcion,
  required EstadoTask estado,
}) {
  tasks.add({
    "titulo": titulo,
    "descripcion": descripcion,
    "estado": EstadoTask.pendiente, // Por defecto se crea en pendiente
  });
}
