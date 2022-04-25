import 'package:flutter/material.dart';
import 'package:flutter_exmple/widgets/Expanded.dart';
import 'package:flutter_exmple/widgets/Row.dart';
import 'package:flutter_exmple/widgets/align.dart';
import 'package:flutter_exmple/widgets/center.dart';
import 'package:flutter_exmple/widgets/column.dart';
import 'package:flutter_exmple/widgets/container.dart';
import 'package:flutter_exmple/widgets/flexible.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlexibleExemple(),
    );
  }
}
