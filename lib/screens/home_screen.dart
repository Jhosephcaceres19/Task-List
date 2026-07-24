import 'package:flutter/material.dart';
import 'package:task_list/screens/navbar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<IconData> iconsData = [
    Icons.task,
    Icons.pending_actions,
    Icons.done_all,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: iconsData.length,
      child: NavbarScreen(icons: iconsData),
    );
  }
}
