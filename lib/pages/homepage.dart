import 'package:flutter/material.dart';
import 'package:todoListDemo/custom/widgets.dart';
import 'package:todoListDemo/pages/ToDoLists.dart';
import 'package:todoListDemo/pages/dataTabledemo.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("DashBoard", 0.0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Play around routes',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        child: Text(
                          "Tasks"
                        ),
                        
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ToDoList()));
                        },
                        color: Colors.red[50],
                        highlightColor: Colors.redAccent),
                    SizedBox(width: 20),
                    RaisedButton(
                        child: Text(
                          "Task Reports"
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DataTableExample()));
                        },
                        color: Colors.red[50],
                        highlightColor: Colors.redAccent),
                  ],
                )
              ]),
        ),
      ),
      
      bottomNavigationBar: BottomBar()
    );
  }
}
