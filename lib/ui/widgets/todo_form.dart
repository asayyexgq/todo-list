import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/ui/viewmodels/add_todo_viewmodel.dart';

class TodoForm extends StatelessWidget {
  const TodoForm({super.key});

  @override
  Widget build(BuildContext context) {
    AddTodoViewModel controller = Get.find();

    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Title'),
          TextFormField(
            controller: controller.titleController,
            validator: (value) => value!.isEmpty ? "Please enter title" : null,
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Text('Descripition'),
          TextFormField(
            controller: controller.descriptionController,
          ),
          const SizedBox(
            height: 24.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 45.0,
            child: ElevatedButton(
              onPressed: controller.addTodo,
              child: const Text('Add Todo'),
            ),
          )
        ],
      ),
    );
  }
}
