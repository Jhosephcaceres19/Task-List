import 'package:flutter/material.dart';
import 'package:task_list/screens/addTaskFAB.dart';
import 'package:task_list/screens/body_screen.dart';
import 'package:task_list/screens/navbar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        body: TabBarView(
          children: [
            BodyScreen(),
            Container(
              color: Colors.white,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, size: 50, color: Colors.amber),
                    SizedBox(height: 20),
                    Text("AUI SE MOSTRARAN LOS FAVORITOS"),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, size: 50, color: Colors.amber),
                    SizedBox(height: 20),
                    Text("tareas realizadas"),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Addtaskfab(
          onTaskAdded: () {
            setState(() {});
          },
        ),
      ),
    );
  }
}
