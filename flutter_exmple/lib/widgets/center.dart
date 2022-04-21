import 'package:flutter/material.dart';
import 'package:flutter_exmple/widgets/Row.dart';

class CenterExmple extends StatelessWidget {
  const CenterExmple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center exmple'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          color: Colors.amber,
          width: 80.0,
          height: 80.0,
          child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RowExmple()));
            },
            child: Text('ok'),
          ),
        ),
      ),
    );
  }
}
