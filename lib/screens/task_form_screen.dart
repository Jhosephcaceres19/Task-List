import 'package:flutter/material.dart';
import 'package:task_list/data/data.dart';

class TaskFormScreen extends StatefulWidget {
  const TaskFormScreen({super.key});

  @override
  State<TaskFormScreen> createState() => _TaskFormScreenState();
}

class _TaskFormScreenState extends State<TaskFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _taskTitulo = TextEditingController();
  final TextEditingController _taskDescripcion = TextEditingController();

  EstadoTask _estadoSeleccionado = EstadoTask.pendiente;

  @override
  void dispose() {
    _taskTitulo.dispose();
    _taskDescripcion.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add new Task",
                style: TextStyle(color: Colors.amber, fontSize: 20),
              ),
              SizedBox(height: 16),
              _buildTextField(
                label: "Titulo",
                controller: _taskTitulo,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Ingrese un titulo";
                  }
                  return null;
                },
              ),
              _buildTextField(
                label: "Descripcion",
                controller: _taskDescripcion,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Ingrese la descripcion";
                  }
                  return null;
                },
              ),

              DropdownButtonFormField<EstadoTask>(
                initialValue: _estadoSeleccionado,
                items: EstadoTask.values.map((estado) {
                  return DropdownMenuItem(
                    value: estado,
                    child: Text(estado.name),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _estadoSeleccionado = value!;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    tasks.add({
                      "titulo": _taskTitulo.text,
                      "descripcion": _taskDescripcion.text,
                      "estado": _estadoSeleccionado,
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Tarea  creada"),
                        backgroundColor: Colors.green,
                      ),
                    );
                    Navigator.pop(context, true);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Error en el formulario")),
                    );
                  }
                },
                child: Text("Guardar"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    required String? Function(String?) validator,
    int maxLines = 1,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontFamily: "tasktask", color: Colors.amber),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.cyanAccent, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        controller: controller,
        validator: validator,
        maxLines: maxLines,
      ),
    );
  }
}
