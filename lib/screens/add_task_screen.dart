import 'package:flutter/material.dart';

var newTaskName;

class AddTask extends StatelessWidget {

  final Function addTaskCallBack;
  AddTask(this.addTaskCallBack);
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
              addTaskCallBack(newTaskName);
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
