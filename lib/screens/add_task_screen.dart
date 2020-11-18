import 'package:flutter/material.dart';
import 'package:flutter_todolist/models/task_list_data.dart';
import 'package:provider/provider.dart';

var newTaskName;

class AddTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30.0, color: Colors.lightBlueAccent),
          ),
          Theme(
            data: ThemeData(
              primaryColor: Colors.lightBlueAccent,
              accentColor: Colors.lightBlueAccent,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'New Task',
              ),
              onChanged: (text){
                newTaskName = text;
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            onPressed: () {
              Provider.of<TaskListData>(context,listen: false).addTask(newTaskName);
              Navigator.pop(context);
            },
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Add',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
