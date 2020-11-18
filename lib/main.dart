import 'package:flutter/material.dart';
import 'package:flutter_todolist/screens/home_screen.dart';
import 'package:flutter_todolist/widgets/task_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}


