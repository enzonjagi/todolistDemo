import 'package:flutter/material.dart';
import 'package:todoListDemo/custom/widgets.dart';

class DataTableExample extends StatefulWidget {
  @override
  _DataTableExampleState createState() => _DataTableExampleState();
}

class _DataTableExampleState extends State<DataTableExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Task Reports", 0.0),
      bottomNavigationBar: BottomBar(),
      body: Container(
          child: SingleChildScrollView(
            child: DataTable(sortColumnIndex: 2, sortAscending: false, columns: [
              //TODO sort according to deadlines/tasks completed column
              DataColumn(label: Text("User"), numeric: true),
              DataColumn(label: Text("Tasks")),
              DataColumn(label: Text("Completed")),
              DataColumn(label: Text("Deadlines met"))
            ], rows: [
              //TODO firebase should populate these rows
              DataRow(cells: [
                DataCell(Text("amosndungo@gmail.com")),
                DataCell(Text("15")),
                DataCell(Text("6")),
                DataCell(Text("4"))
              ]),
              DataRow(cells: [
                DataCell(Text("enzonjagi@gmail.com")),
                DataCell(Text("12")),
                DataCell(Text("8")),
                DataCell(Text("8"))
              ]),
              DataRow(cells: [
                DataCell(Text("amosnjagi73@gmail.com")),
                DataCell(Text("2")),
                DataCell(Text("2")),
                DataCell(Text("2"))
              ]),
            ]),
          )),
    );
  }
}
