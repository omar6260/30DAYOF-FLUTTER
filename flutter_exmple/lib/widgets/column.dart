import 'package:flutter/material.dart';

class ColumnExmple extends StatefulWidget {
  ColumnExmple({Key? key}) : super(key: key);

  @override
  State<ColumnExmple> createState() => _ColumnExmpleState();
}

class _ColumnExmpleState extends State<ColumnExmple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Exmple'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.green,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.red,
              width: 80.0,
              height: 80.0,
            ),
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.blue,
              width: 80.0,
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }
}
