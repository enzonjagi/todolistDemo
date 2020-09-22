import 'package:flutter/material.dart';
import 'package:todoListDemo/custom/widgets.dart';
import 'package:todoListDemo/models/task.dart';
import 'package:todoListDemo/models/todoitem.dart';

//display the task todolist
class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  String _taskname, _assignee;

  List<Task> tasks = [
    Task(
        taskname: "Make cash",
        assignee: "amosndungo@gmail.com",
        duedate: "05/01/2021",
        todos: [
          ToDoItem(todoName: "Graduate", todoDescription: "With honors"),
          ToDoItem(todoName: "Invest", todoDescription: "Diversify"),
          ToDoItem(todoName: "Study more", todoDescription: "Aeronautics"),
          ToDoItem(todoName: "Rugby", todoDescription: "Train and play"),
        ]),
    Task(
        taskname: "Lenovo flex 5 14",
        assignee: "amosndungo@gmail.com",
        duedate: "05/01/2021",
        todos: [
          ToDoItem(todoName: "Invest", todoDescription: "Forex"),
          ToDoItem(
              todoName: "Find dealer",
              todoDescription: "Check dealers in Embu or Nairobi"),
        ]),
    Task(
        taskname: "Intro to Aeronautical Engineering",
        assignee: "omarnjagi@gmail.com",
        duedate: "26/09/2020",
        todos: [
          ToDoItem(
              todoName: "Rewatch",
              todoDescription: "understand the previous video"),
          ToDoItem(todoName: "Solve", todoDescription: "The exercises after"),
          ToDoItem(todoName: "Study more", todoDescription: "Aeronautics"),
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("TaskWidget", 2),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Assigned: "),
              SizedBox(height: 8),
              Text("Due: "),
              SizedBox(height: 10),

              //TODO replace these 3 with a listview builder
              TodoTile(todoname: "Todo1", todoDesc: "Do this"),
              TodoTile(todoname: "Todo2", todoDesc: "Do that"),
              TodoTile(todoname: "Todo3", todoDesc: "Do other"),


              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.check),
                      label: Text("Complete")),
                  SizedBox(width: 150),
                  RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.save),
                      label: Text("Save")),
                ],
              )
            ]),
      ),
      
      
    );
  }
}
