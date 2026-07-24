import 'package:flutter/material.dart';
import 'package:task_list/screens/AddTaskFAB.dart';
import 'package:task_list/screens/navbar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Map<String, IconData> iconsData = {
    "Inicio": Icons.task,
    "En proceso": Icons.pending_actions,
    "Terminado": Icons.done_all,
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: iconsData.length,
      child: Scaffold(
        appBar: NavbarScreen(icons: iconsData),
        floatingActionButton: const Addtaskfab(),
      ),
    );
  }
}
