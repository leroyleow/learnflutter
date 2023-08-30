import 'package:flutter/material.dart';


class WLyFractionallySizeBoxPage extends StatelessWidget {
  const WLyFractionallySizeBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedWidget(widthFactor: 0.4),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedWidget(widthFactor: 0.6),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedWidget(widthFactor: 0.8),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FractionallySizedWidget(widthFactor: 1.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FractionallySizedWidget extends StatelessWidget {
  final double widthFactor;
  const FractionallySizedWidget({super.key, required this.widthFactor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: widthFactor,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black45,
            border: Border.all(color: Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '${widthFactor * 100}%',
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}