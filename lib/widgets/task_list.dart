import 'package:flutter/material.dart';
import 'package:flutter_todolist/models/task_model.dart';
import 'package:flutter_todolist/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskList;

  TaskList({this.taskList});
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskList.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          taskName: widget.taskList[index].taskName,
          isChecked: widget.taskList[index].taskState,
          taskListCallback: (newState){
            setState(() {
              widget.taskList[index].toggleState();
            });
          },
        );
      },
    );
  }
}
