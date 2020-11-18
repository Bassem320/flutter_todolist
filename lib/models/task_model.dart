
import 'package:flutter/cupertino.dart';

class Task{
  final String taskName;
  bool taskState;

  Task({@required this.taskName,this.taskState:false});

  toggleState(){
    taskState = !taskState;
  }
}