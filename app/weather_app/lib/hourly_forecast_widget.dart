import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HourlyForecastCard extends StatelessWidget {
  final String hourtime;
  final IconData houricon;
  final String hourtemp;

  const HourlyForecastCard({
    super.key,
    required this.hourtime,
    required this.houricon,
    required this.hourtemp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              hourtime,
              style: GoogleFonts.robotoCondensed(
                  fontSize: 14, fontWeight: FontWeight.w800),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 4,
            ),
            Icon(
              houricon,
              size: 26,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              '$hourtemp°C',
              style: GoogleFonts.robotoCondensed(
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
