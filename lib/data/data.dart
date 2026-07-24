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
