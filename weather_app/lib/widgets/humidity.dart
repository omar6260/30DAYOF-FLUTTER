import 'package:flutter/material.dart';

class Humidity extends StatelessWidget {
  const Humidity({
    Key? key,
    required this.humidity,
  }) : super(key: key);

  final String humidity;

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
                  child: Image.asset('assets/images/humidity.png',
                      fit: BoxFit.cover)),
              const SizedBox(
                width: 20,
              ),
              const Text('Humidity',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Text(humidity,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
