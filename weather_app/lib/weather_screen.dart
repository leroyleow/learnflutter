import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/additional_info_widget.dart';

import 'hourly_forecast_widget.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
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
      body: Padding(
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
                            '300.67°K',
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
