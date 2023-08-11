import 'dart:convert';
import 'dart:ui';

import 'package:dynamic_weather_icons/dynamic_weather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/additional_info_widget.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/secrets.dart';

import 'hourly_forecast_widget.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  //late here mean need to assign the value before the build function is called. See commented debug to function flow
  //late double temp;

  //build function should be make least expensive. Async is expensive so avoid call in build function.
  //data return is Json key, value pair. On left is String, right can be String, Array etc. therefore dynamic

  late Future<Map<String, dynamic>> weatherdata;

  Future<Map<String, dynamic>> getCurrentWeather() async {
    //print('fn [2] function called');
    try {
      String cityName = 'Singapore';
      final response = await http.get(
        Uri.parse(
            'https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$openWeatherAPIKey'),
      );
      //print('fn [3] api ended');
      final data = jsonDecode(response.body);
      if (data['cod'] != '200') {
        throw 'An unexpected error occurred';
      }
      return data;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  void initState() {
    super.initState();
    weatherdata = getCurrentWeather();
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
            onPressed: () {
              //local state
              setState(() {
                weatherdata = getCurrentWeather();
              });
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: FutureBuilder(
        //data featch will restart every time the FutureBuilder's parent is rebuilt. If put getCurrentWeather(), mean that the widget get rebuild where there is a new future.[See notion-> FutureBuilder for explanation]
        future: weatherdata, //getCurrentWeather(),
        builder: (context, snapshot) {
          //print(snapshot);
          //print(snapshot.runtimeType);

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              //adaptive detect phone OS [Andriod , Mac], then show indicator
              child: CircularProgressIndicator.adaptive(),
            );
          }

          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          final data = snapshot.data!;
          final currentWeatherData = data['list'][0];
          final currentTemp =
              (double.parse(currentWeatherData['main']['temp'].toString()) -
                      273.1)
                  .toString()
                  .substring(0, 4);
          final currentSky = currentWeatherData['weather'][0]['main'];
          final currenthumidty = currentWeatherData['main']['humidity'];
          final currentwindspeed = currentWeatherData['wind']['speed'];
          final currentpressure = currentWeatherData['main']['pressure'];
          //print(data['list'][0]['main']);

          return Padding(
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
                                '$currentTemp°C',
                                style: GoogleFonts.robotoCondensed(
                                  fontSize: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Icon(
                                WeatherIcon.getIcon(currentSky == 'Clouds'
                                    ? 'wi-day-cloudy'
                                    : currentSky == 'Rain'
                                        ? 'wi-day-rain'
                                        : 'wi-day-sunny'),
                                size: 48,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                '$currentSky',
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
                  'Hourly Forecast',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // Use the next widget[ListViewBuilder] after SingleChildScrollView to load widget on demand / lazy loading
                // this comment widget loads all 40 widget at once , bad performance
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(children: [
                //     for (int i = 0; i < 39; i++)...[
                //       HourlyForecastCard(
                //         hourtime: data['list'][i + 1]['dt'].toString(),
                //         houricon: WeatherIcon.getIcon(data['list'][i + 1]
                //                     ['weather'][0]['main'] ==
                //                 'Clouds'
                //             ? 'wi-day-cloudy'
                //             : currentSky == 'Rain'
                //                 ? 'wi-day-rain'
                //                 : 'wi-day-sunny'),
                //         hourtemp:
                //             data['list'][i + 1]['main']['temp'].toString(),
                //       ),],
                //   ]),
                // ),
                // ListView -> is list that is scrollable
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final hourlyforcast = data['list'][index + 1];
                      final hourlytime = DateFormat.j().format(
                          DateTime.parse(hourlyforcast['dt_txt'].toString()));
                      final hourlySky = WeatherIcon.getIcon(
                          hourlyforcast['weather'][0]['main'] == 'Clouds'
                              ? 'wi-day-cloudy'
                              : currentSky == 'Rain'
                                  ? 'wi-day-rain'
                                  : 'wi-day-sunny');
                      final hourlytemp = (double.parse(
                                  hourlyforcast['main']['temp'].toString()) -
                              273.15)
                          .toString()
                          .substring(0, 4);
                      return HourlyForecastCard(
                        hourtime: hourlytime,
                        houricon: hourlySky,
                        hourtemp: hourlytemp,
                      );
                    },
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AdditionalInfoWidget(
                        weathericon: Icons.water_drop,
                        weathertype: 'Humidity',
                        weathertemp: '$currenthumidty',
                      ),
                      AdditionalInfoWidget(
                        weathericon: Icons.air,
                        weathertype: 'Wind Speed',
                        weathertemp: '$currentwindspeed',
                      ),
                      AdditionalInfoWidget(
                        weathericon: Icons.beach_access,
                        weathertype: 'Pressure',
                        weathertemp: '$currentpressure',
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
