import 'package:flutter/material.dart';

class FlexibleExemple extends StatelessWidget {
  const FlexibleExemple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              color: Colors.green,
              width: 80,
              height: 80,
            ),
            flex: 2,
          ),
          Flexible(
            child: Container(
              color: Colors.red,
              width: 80,
              height: 80,
            ),
            flex: 3,
          ),
          Flexible(
            child: Container(
              color: Colors.orange,
              width: 80,
              height: 80,
            ),
            flex: 4,
          ),
        ],
      ),
    );
  }
}
