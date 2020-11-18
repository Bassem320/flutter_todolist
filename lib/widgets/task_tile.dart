import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: TaskCheckBox(
          checkboxState: isChecked,
          checkboxCallBack: toggleCheckbox,
      ),
      title: Text('My First Task',
      style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough : null,
      ),),
    );
  }

  toggleCheckbox(bool newValue){
    setState(() {
      isChecked = newValue;
    });
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