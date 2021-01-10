import 'package:flutter/material.dart';
import 'SecondRoute.dart';
import 'User.dart';

class MyHomePage extends StatefulWidget {
  static User theUser = new User();
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController taskNameController = new TextEditingController();
    String texts = "";
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Container(
                margin: EdgeInsets.all(50),
                child: Column(
                  children: <Widget>[
                    Text("Add a Task"),
                    TextField(
                      controller: taskNameController,
                      onChanged: (text) {
                        texts = text;
                      },
                      onEditingComplete: () {
                        taskNameController.text = texts;
                      },
                      //textAlign: TextAlign.center,
                    ),
                    FlatButton(
                      color: Colors.blue,
                      child: Text("Add Task"),
                      onPressed: () {
                        if (taskNameController.text.length > 1) {
                          addTaskName(taskNameController.text);
                        }
                      },
                    )
                  ],
                ))));
  }

  void addTaskName(String name) {
    // Should show a dialog or new window where one can specify the occurrence
    print("This is the name: " + name);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondRoute(name)),
    );
  }
}
