import 'package:flutter/material.dart';

class Clouds extends StatelessWidget {
  const Clouds({
    Key? key,
    required this.clouds,
  }) : super(key: key);

  final String clouds;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/images/clouds.png',
                      fit: BoxFit.cover)),
              const SizedBox(
                width: 20,
              ),
              const Text('Clouds',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Text(clouds,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
