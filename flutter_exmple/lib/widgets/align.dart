import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align Exmaple'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          padding: const EdgeInsets.all(40),
          color: Colors.cyanAccent,
          width: 80.0,
          height: 80.0,
        ),
      ),
    );
  }
}
