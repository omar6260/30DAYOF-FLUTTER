import 'package:flutter/material.dart';

class MainWeather extends StatelessWidget {
  const MainWeather({
    Key? key,
    required this.mainWeather,
  }) : super(key: key);

  final String mainWeather;

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
                  child: Image.asset('assets/images/weather.png',
                      fit: BoxFit.cover)),
              const SizedBox(
                width: 20,
              ),
              const Text('Weather',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Text(mainWeather,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
