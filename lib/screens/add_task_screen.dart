import 'package:flutter/material.dart';

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
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'New Task',

              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            onPressed: () {},
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
