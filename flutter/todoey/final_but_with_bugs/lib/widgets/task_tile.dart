import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/widgets/tasks_list.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Task actualTask;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.actualTask});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: (){
        Provider.of<TaskData>(context, listen: false).removeTask(actualTask);
      },
      child: ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
