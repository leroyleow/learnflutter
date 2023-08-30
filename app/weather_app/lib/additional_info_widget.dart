import 'package:flutter/material.dart';

class AdditionalInfoWidget extends StatelessWidget {
  const AdditionalInfoWidget({
    super.key,
    required this.weathericon,
    required this.weathertype,
    required this.weathertemp,
  });

  final IconData weathericon;
  final String weathertype;
  final String weathertemp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(weathericon, size: 32),
        const SizedBox(height: 6),
        Text(weathertype),
        const SizedBox(
          height: 6,
        ),
        Text(weathertemp),
      ],
    );
  }
}
