import 'package:flutter/material.dart';
import '../model/ToDo.dart';
import '../constants/colors.dart';

class ToDoItems extends StatelessWidget {
  final ToDo todo;
  final onTodoChanged;
  final onDelete;
  const ToDoItems(
      {super.key,
      required this.todo,
      required this.onDelete,
      required this.onTodoChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        onTap: (() {
          onTodoChanged(todo);
        }),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: tdRed, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              onPressed: (() {
                onDelete(todo.id);
              }),
              icon: Icon(Icons.delete),
              iconSize: 18,
              color: Colors.white,
            )),
      ),
    );
  }
}
