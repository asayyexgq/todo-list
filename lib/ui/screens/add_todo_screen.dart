import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/ui/viewmodels/add_todo_viewmodel.dart';
import 'package:todo_list/ui/widgets/todo_form.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddTodoViewModel());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 12.0,
        ),
        child: TodoForm(),
      ),
    );
  }
}
