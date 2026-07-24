import 'package:flutter/material.dart';

class NavbarScreen extends StatelessWidget {
  final List<IconData> icons;
  const NavbarScreen({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Lista de Tareas:"),
          bottom: TabBar(
            tabs: icons
                .map((icons) => Tab(icon: Icon(icons, size: 30)))
                .toList(),
          ),
        ),
      ),
    );
  }
}
