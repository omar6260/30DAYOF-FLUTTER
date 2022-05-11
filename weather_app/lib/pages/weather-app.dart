import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/pages/defaultweather.dart';
import 'package:weather_app/pages/haze.dart';
import 'package:weather_app/pages/humidity.dart';
import 'package:weather_app/pages/rain.dart';
import 'package:weather_app/pages/windspeed.dart';

import 'clouds.dart';
import 'mainweather.dart';

class WeatherApp extends StatefulWidget {
  WeatherApp({Key? key}) : super(key: key);

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  void initState() {
    super.initState();
    getWeather();
  }

  String cityName = 'London';
  String apikey = '018d8a5ff2495105a7bba3fe4bc09882';

  final TextEditingController _controller = TextEditingController();

  var temp = '80';
  var description = 'Mostly cloudy';
  var mainWeather = 'Rain';
  var humidity = '80';
  var windSpeed = '0.50';
  var clouds = '65';

  Future getWeather() async {
    // les information du météo app

    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&units=metric&appid=$apikey');
    final weather = await http.get(url);
    final response = json.decode(weather.body);

    setState(() {
      temp = response['main']['temp'].toString();
      description = response['weather'][0]['description'];
      mainWeather = response['weather'][0]['main'];
      humidity = response['main']['humidity'].toString();
      windSpeed = response['wind']['speed'].toString();
      clouds = response['clouds']['all'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 8),
                color: Colors.blue.shade400,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8, left: 10),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        SizedBox(
                          width: 200,
                          height: 70,
                          child: TextField(
                            controller: _controller,
                            onChanged: (value) {
                              cityName = value;
                              getWeather();
                            },
                            decoration: const InputDecoration(
                              labelText: 'Enter city name',
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              isDense: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, right: 10),
                      child: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [Colors.lightBlue, Colors.blue, Colors.blueAccent],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        child: mainWeather == 'Rain'
                            ? const Rain()
                            : mainWeather == 'Clear'
                                ? const Haze()
                                : const DefaultWeather(), // Aifficher l'image en fonction de la météo
                      ),
                      Text(
                        temp.toString() +
                            '\u00B0', // UNICODE POUR LES SYMBOLES DE DEGRE
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Location: " + cityName,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  MainWeather(mainWeather: mainWeather),
                  Clouds(clouds: clouds),
                  Humidity(humidity: humidity),
                  WindSpeed(windSpeed: windSpeed)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
