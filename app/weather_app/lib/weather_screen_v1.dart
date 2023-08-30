import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/additional_info_widget.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/secrets.dart';

import 'hourly_forecast_widget.dart';

class WeatherScreenV1 extends StatefulWidget {
  const WeatherScreenV1({super.key});

  @override
  State<WeatherScreenV1> createState() => _WeatherScreenV1State();
}

class _WeatherScreenV1State extends State<WeatherScreenV1> {
  //late here mean need to assign the value before the build function is called. See commented debug to function flow
  //late double temp;
  double temp = 0;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    //print('fn [1] initState');
    getCurrentWeather();
  }

  //build function should be make least expensive. Async is expensive so avoid call in build function.
  Future getCurrentWeather() async {
    //print('fn [2] function called');
    try {
      setState(() {
        isLoading = true;
      });

      String cityName = 'London,uk';
      final response = await http.get(
        Uri.parse(
            'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIKey'),
      );
      //print('fn [3] api ended');
      final data = jsonDecode(response.body);
      if (data['cod'] != '200') {
        throw 'An unexpected error occurred';
      }

      setState(() {
        temp = (data['list'][0]['main']['temp']);
        isLoading = false;
      });
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    //print('fn [4] build fn');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: GoogleFonts.robotoCondensed(
            fontSize: 23,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //main bar
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 10,
                            sigmaY: 10,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '$temp K',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Icon(
                                  Icons.cloud,
                                  size: 48,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Rain',
                                  style: GoogleFonts.robotoCondensed(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //weather details
                  const Text(
                    'Weather Forecast',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HourlyForecastCard(
                          hourtime: '9:00',
                          houricon: Icons.cloud,
                          hourtemp: '300.67',
                        ),
                        HourlyForecastCard(
                          hourtime: '10:00',
                          houricon: Icons.cloud,
                          hourtemp: '300.67',
                        ),
                        HourlyForecastCard(
                          hourtime: '11:00',
                          houricon: Icons.cloud,
                          hourtemp: '300.67',
                        ),
                        HourlyForecastCard(
                          hourtime: '12:00',
                          houricon: Icons.cloud,
                          hourtemp: '300.67',
                        ),
                        HourlyForecastCard(
                          hourtime: '01:00',
                          houricon: Icons.cloud,
                          hourtemp: '300.67',
                        ),
                        HourlyForecastCard(
                          hourtime: '02:00',
                          houricon: Icons.cloud,
                          hourtemp: '300.67',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //additional info
                  const Text(
                    'Additional Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AdditionalInfoWidget(
                          weathericon: Icons.water_drop,
                          weathertype: 'Humidity',
                          weathertemp: '94',
                        ),
                        AdditionalInfoWidget(
                          weathericon: Icons.air,
                          weathertype: 'Wind Speed',
                          weathertemp: '7.5',
                        ),
                        AdditionalInfoWidget(
                          weathericon: Icons.beach_access,
                          weathertype: 'Pressure',
                          weathertemp: '1000',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
