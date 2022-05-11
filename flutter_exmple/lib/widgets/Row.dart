import 'package:flutter/material.dart';

class RowExmple extends StatelessWidget {
  const RowExmple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Exmple'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 10.0,
      ),
      body: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.grey,
              width: 90.0,
              height: 90.0,
            ),
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.red,
              width: 90.0,
              height: 90.0,
            ),
            Container(
              padding: EdgeInsets.all(0.0),
              color: Colors.green,
              width: 90.0,
              height: 90.0,
            ),
          ],
        ),
      ),
    );
  }
}
