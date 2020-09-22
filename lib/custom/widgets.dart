import 'package:flutter/material.dart';
import 'package:todoListDemo/pages/homepage.dart';

Widget CustomAppbar(String pageName, double elevate) {
  return AppBar(
    title: Text(
      "$pageName",
      style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: elevate,
  );
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
    shape: CircularNotchedRectangle(),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {},
          )
        ]),
  );
  }
}


Widget TodoTile({@required String todoname, @required String todoDesc}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    child: ListTile(
      leading: Icon(Icons.check_box_outline_blank),
      trailing: IconButton(
        icon: Icon(Icons.expand_more),
        onPressed: () {},
      ),
      title: Text("$todoname"),
      subtitle: Text("Assigned: $todoDesc"),
      onTap: () {
        //should open a task
      },
    ),
  );
}
