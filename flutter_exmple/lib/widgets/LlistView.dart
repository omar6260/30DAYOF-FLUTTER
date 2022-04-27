import 'package:flutter/material.dart';

class ListViewExemple extends StatelessWidget {
  const ListViewExemple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "omar",
      "fatou",
      "aicha",
      "astou",
      "falou",
      "ousman",
      "saliou",
      "moussa",
      "modou"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Listview'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (BuildContext context, int position) {
              var name = names[position];
              return ListTile(
                title: Text(name),
              );
            }),
      ),
    );
  }
}
