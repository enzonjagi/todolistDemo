import 'package:flutter/material.dart';
import 'package:todoListDemo/models/todoitem.dart';

class Task{
  String taskname;
  String duedate;
  String assignee;
  String todoName;
  String todoDescription;
  List<ToDoItem> todos= [];
  

  Task({@required this.taskname, @required this.assignee, @required this.duedate, this.todos});

  
}