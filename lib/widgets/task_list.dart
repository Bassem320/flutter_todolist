import 'package:flutter/material.dart';
import 'package:flutter_todolist/models/task_list_data.dart';
import 'package:flutter_todolist/models/task_model.dart';
import 'package:flutter_todolist/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {


  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskListData>(context).taskList.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          taskName: Provider.of<TaskListData>(context).taskList[index].taskName,
          isChecked: Provider.of<TaskListData>(context).taskList[index].taskState,
          taskListCallback: (newState){
            setState(() {
              Provider.of<TaskListData>(context,listen: false).taskList[index].toggleState();
            });
          },
        );
      },
    );
  }
}
