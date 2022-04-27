import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Drawer'),
      ),
      drawer: new Drawer(
          child: new ListView(
        children: [
          new UserAccountsDrawerHeader(
            accountName: new Text('Oumar Fall'),
            accountEmail: new Text('falloumar502@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Text(
                'O',
                style: TextStyle(color: Colors.black87),
              ),
            ),
            decoration: new BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                  Colors.green,
                ])),
          ),
          new ListTile(
            leading: Icon(Icons.home),
            title: new Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: Icon(Icons.home),
            title: new Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: Icon(Icons.home),
            title: new Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: Icon(Icons.home),
            title: new Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new ListTile(
            leading: Icon(Icons.home),
            title: new Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
    );
  }
}
