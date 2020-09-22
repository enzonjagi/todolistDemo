import 'package:flutter/material.dart';
import 'package:todoListDemo/custom/widgets.dart';
import 'package:todoListDemo/models/task.dart';
import 'package:todoListDemo/models/todoitem.dart';
import 'package:todoListDemo/pages/playTask.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  String _one, _two, _three;

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
      appBar: CustomAppbar("Todos", 0.0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    //Navigate to task details
                    
                  },
                  child: TaskTile(
                      taskname: tasks[index].taskname,
                      dueDate: tasks[index].duedate,
                      assignee: tasks[index].assignee),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Open a prompt to create a task
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
  Widget TaskTile(
    {@required String taskname,
    @required String dueDate,
    @required String assignee}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    child: ListTile(
      leading: Icon(Icons.work),
      trailing: Text("Due: $dueDate"),
      title: Text("$taskname"),
      subtitle: Text("Assigned: $assignee"),
      onTap: () {
        //should open a task
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TaskScreen()));

      },
    ),
  );
}
}

// TODO customize the list
