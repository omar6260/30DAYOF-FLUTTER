import 'package:flutter/material.dart';

class WindSpeed extends StatelessWidget {
  const WindSpeed({
    Key? key,
    required this.windSpeed,
  }) : super(key: key);

  final String windSpeed;

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
                  child:
                      Image.asset('assets/images/wind.png', fit: BoxFit.cover)),
              const SizedBox(
                width: 20,
              ),
              const Text('Wind Speed',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Text(windSpeed,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
