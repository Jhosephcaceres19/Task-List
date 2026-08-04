import 'package:flutter/material.dart';

class DeleteIcon extends StatelessWidget {
  final VoidCallback onTapDelete;

  const DeleteIcon({super.key, required this.onTapDelete});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTapDelete,
      icon: Icon(Icons.delete),
      color: Colors.red,
      iconSize: 24.0,
    );
  }
}
