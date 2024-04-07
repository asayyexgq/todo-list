import 'package:flutter/material.dart';
import 'package:todo_list/ui/widgets/todo_item.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({
    super.key,
    this.list,
    required this.onDelete,
  });

  final List? list;
  final void Function(int id) onDelete;

  @override
  Widget build(BuildContext context) {
    return list != null && list!.isNotEmpty
        ? ListView.builder(
            itemCount: list!.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return TodoItem(
                id: list![index].id,
                title: list![index].title ?? '',
                onDelete: onDelete,
              );
            },
          )
        : Container();
  }
}
