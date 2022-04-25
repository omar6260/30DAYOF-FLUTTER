import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expanded'),
          leading: Icon(
            Icons.menu_outlined,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  color: Colors.cyan,
                  height: 80,
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 80,
                ),
                flex: 3,
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 80,
                ),
                flex: 4,
              ),
            ],
          ),
        ));
  }
}
