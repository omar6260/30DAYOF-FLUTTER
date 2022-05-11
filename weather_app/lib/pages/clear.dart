import 'package:flutter/material.dart';

import 'package:simple_shadow/simple_shadow.dart';

class Clear extends StatelessWidget {
  const Clear({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleShadow(
      child: Image.asset(
        'assets/images/sun.png',
        height: 220,
        width: 220,
      ),
      opacity: 0.6,
      color: Colors.black,
      offset: const Offset(5, 5),
      sigma: 7, // Default: 2
    );
  }
}
