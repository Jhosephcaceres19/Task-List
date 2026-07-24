import 'package:flutter/material.dart';

class NavbarScreen extends StatelessWidget implements PreferredSizeWidget {
  final Map<String, IconData> icons;
  const NavbarScreen({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Lista de Tareas:"),
      bottom: TabBar(
        tabs: icons.entries.map((entry) {
          return Tab(icon: Icon(entry.value), text: entry.key);
        }).toList(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48);
}
