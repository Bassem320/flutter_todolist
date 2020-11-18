import 'package:flutter/material.dart';
import 'package:flutter_todolist/models/task_list_data.dart';
import 'package:flutter_todolist/screens/home_screen.dart';
import 'package:flutter_todolist/widgets/task_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final taskListData = TaskListData([]);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskListData>(
      create: (context)=> taskListData,
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}


