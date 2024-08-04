// ignore_for_file: unused_import, duplicate_import, unnecessary_import, unnecessary_null_comparison, unused_local_variable, avoid_print, prefer_const_constructors, depend_on_referenced_packages

import '../../../features/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:convert';
import 'dart:ui';

import 'package:intl/intl.dart';

import 'package:http/http.dart' as http;

import '../widgets/hourly_forecast.dart';
import '../widgets/weather_item.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  Constants myConstants = Constants();

  @override
  void initState() {
    super.initState();

    getLocation();
  }

  Future getLocation() async {
    try {
      permissionGetter();
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      double latitude = position.latitude;
      double longitude = position.longitude;

      print(position);
      final response = await http.get(
        Uri.parse(
            'https://api.openweathermap.org/data/2.5/forecast?lat=$latitude&lon=$longitude&APPID=ab4dd3387b0b757ed5e967f36cc89fb2'),
      );
      final data = jsonDecode(response.body);
      print(data);

      return data;
    } catch (e) {
      print(e);
    }
  }

  Future permissionGetter() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;

    double responsivefont = screenHeight;

    double cardWidth = screenWidth * 0.8;
    double hourlyForecastHeight = screenHeight * 0.3;
    return Scaffold(
        body: Hero(
      tag: 'weather-page-tag',
      child: FutureBuilder(
          future: getLocation(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            final data = snapshot.data!;

            final curTemp = data['list'][0]['main']['temp'];
            final currentTemp = curTemp - 273.15;
            final maxTemp = data['list'][0]['main']['temp_max'];

            final currentSky = data['list'][2]['weather'][0]['main'];
            final currentPressure =
                data['list'][0]['main']['pressure'].toString();
            final currentHumidity =
                data['list'][0]['main']['humidity'].toString();
            final currentWSpeed = data['list'][2]['wind']['speed'];
            final currentDateTime = DateTime.parse(data['list'][1]['dt_txt']);
            final date = DateFormat.Md().format(currentDateTime);
            final time = DateFormat.Hms().format(currentDateTime);

            return Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  padding: EdgeInsets.all(screenHeight * 0.02),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.06,
                        ),
                        Container(
                          width: cardWidth * 1.06,
                          height: screenHeight * .2,
                          decoration: BoxDecoration(
                              color: Color(0xff296e48),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff296e48).withOpacity(.5),
                                  offset: const Offset(0, 25),
                                  blurRadius: 10,
                                  spreadRadius: -12,
                                )
                              ]),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: -40,
                                left: 20,
                                child: currentSky == 'Clouds'
                                    ? Image.asset(
                                        'assets/icons/heavycloud.png',
                                        width: screenWidth * 0.34,
                                      )
                                    : currentSky == 'Rain'
                                        ? Image.asset(
                                            'assets/icons/heavyrain.png',
                                            width: screenWidth * 0.34,
                                          )
                                        : Image.asset(
                                            'assets/icons/clear.png',
                                            width: screenWidth * 0.34,
                                          ),
                              ),
                              Positioned(
                                bottom: 30,
                                left: 20,
                                child: Text(
                                  currentSky,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: screenHeight * 0.02),
                                ),
                              ),
                              Positioned(
                                top: 20,
                                right: 20,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        currentTemp.toStringAsFixed(2),
                                        style: TextStyle(
                                            fontSize: responsivefont * .09,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 238, 238, 238)),
                                      ),
                                    ),
                                    Text(
                                      'o',
                                      style: TextStyle(
                                        fontSize: responsivefont * 0.04,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 238, 238, 238),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          width: screenWidth * .9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              weatherItem(
                                text: 'Wind Speed',
                                value: currentWSpeed.toString(),
                                unit: 'km/h',
                                image: 'assets/icons/windspeed.png',
                              ),
                              weatherItem(
                                  text: 'Humidity',
                                  value: currentHumidity,
                                  unit: 'gm-3',
                                  image: 'assets/icons/humidity.png'),
                              weatherItem(
                                text: 'Max Temp',
                                value: maxTemp.toString(),
                                unit: 'K',
                                image: 'assets/icons/max-temp.png',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Today',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              'Next 24 hours',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(
                            height: hourlyForecastHeight,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                final hourForecast = data['list'][index + 1];
                                final hourlySky = data['list'][index + 1]
                                    ['weather'][0]['main'];
                                final time =
                                    DateTime.parse(hourForecast['dt_txt']);
                                final hourTemp =
                                    hourForecast['main']['temp'].toString();
                                double hTemp = double.parse(hourTemp);

                                final tempp = hTemp - 273.15;

                                return HourlyForecast(
                                    time: DateFormat.j().format(time),
                                    imagepath: hourlySky == 'Rain'
                                        ? 'assets/icons/heavyrain.png'
                                        : hourlySky == 'Clouds'
                                            ? 'assets/icons/heavycloud.png'
                                            : 'assets/icons/clear.png',
                                    temp: "${tempp.toStringAsFixed(2)} °C");
                              },
                            ),
                          ),
                        )
                      ]),
                ));
          } //end of futureclass

          ),
    ));
  }
}
