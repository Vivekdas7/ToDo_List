import 'package:flutter/material.dart';
import 'package:todolist/constant/colors.dart';
import 'package:todolist/model/todo.dart';

class ToDoItems extends StatelessWidget {
  final ToDo todo;
  final onTodoChange;
  final onDeleteIteam;
  const ToDoItems(
      {super.key,
      required this.todo,
      required this.onTodoChange,
      required this.onDeleteIteam});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 20),
        child: ListTile(
          onTap: () {
            onTodoChange(todo);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 18,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete),
              onPressed: () {
               onDeleteIteam(todo.id);
              },
            ),
          ),
        ));
  }
}
