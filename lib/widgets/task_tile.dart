import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskName;
  final Function taskListCallback;
  TaskTile({this.taskName,this.isChecked,this.taskListCallback} );
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: TaskCheckBox(
          checkboxState: isChecked,
          checkboxCallBack: taskListCallback,
      ),
      title: Text(taskName,
      style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough : null,
      ),),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function checkboxCallBack;
  TaskCheckBox({this.checkboxState,this.checkboxCallBack});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged:checkboxCallBack,
    );
  }

}