import 'package:flutter/material.dart';

class PaddingExmple extends StatelessWidget {
  const PaddingExmple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example App"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 32, 24, 32),
        child: Container(
          padding: EdgeInsets.all(0),
          color: Colors.amber,
          width: 80,
          height: 80,
        ),
      ),
    );
  }
}
