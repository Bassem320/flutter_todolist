import 'package:flutter/cupertino.dart';
import 'package:flutter_todolist/models/task_model.dart';

class TaskListData extends ChangeNotifier{
  List<Task> taskList=[];
  TaskListData(this.taskList);

  addTask(String newTaskName){
    taskList.add(Task(taskName: newTaskName));
    notifyListeners();
  }

  toggleTaskState(int index){
    taskList[index].toggleState();
    notifyListeners();
  }

  removeTask(int index){
    taskList.remove(index);
    notifyListeners();
  }

}