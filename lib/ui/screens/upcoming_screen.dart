import 'package:flutter/material.dart';
import 'package:todo_list/ui/widgets/todo_list_view.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TodoListView(
      onDelete: (id) => print(id),
    );
  }
}
