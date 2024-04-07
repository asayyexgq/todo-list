import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    super.key,
    required this.title,
    this.description = '',
    required this.id,
    required this.onDelete,
  });

  final String title;
  final String? description;
  final int id;
  final void Function(int id) onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: description != null ? Text(description ?? '') : null,
      trailing: IconButton(
        onPressed: () => onDelete(id),
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ),
    );
  }
}
