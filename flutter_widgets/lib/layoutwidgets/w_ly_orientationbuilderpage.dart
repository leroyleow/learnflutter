import 'package:flutter/material.dart';

class WLyOrientationBuilderPage extends StatelessWidget {
  const WLyOrientationBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Orientation Builder",
          style: TextStyle(fontSize: 10),
        ),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        final isPortrait = orientation == Orientation.portrait;

        return GridView.count(
          crossAxisCount: isPortrait ? 2 : 3,
          children: List.generate(
            40,
            (index) => Card(
              color: Colors.orange.shade700,
              child: Center(
                  child: Text(
                "Item $index",
                style: const TextStyle(
                  fontSize: 18,
                ),
              )),
            ),
          ),
        );
      }),
    );
  }
}
