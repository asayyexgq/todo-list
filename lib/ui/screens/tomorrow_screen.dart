import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/ui/viewmodels/home_viewmodel.dart';
import 'package:todo_list/ui/widgets/todo_list_view.dart';

class TomorrowScreen extends StatelessWidget {
  const TomorrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel controller = Get.find();
    return Obx(
      () => TodoListView(
        list: controller.tomorrowTodos.toList(),
        onDelete: controller.removeTodo,
      ),
    );
  }
}
