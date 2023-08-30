import 'package:flutter/material.dart';

class WLyMediaQueryPage extends StatelessWidget {
  const WLyMediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shortestsize = MediaQuery.of(context).size.shortestSide;
    final orientation = MediaQuery.of(context).orientation;

    final isPortrait = orientation == Orientation.landscape;
    final isMobile = shortestsize < 800;
    
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "MediaQuery Size ${shortestsize.toStringAsFixed(2)} & Orientation $orientation",
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        drawer: isMobile
            ? Drawer(
                child: Container(
                  color: Colors.blue.shade600,
                  width: 300,
                  child: const Center(
                    child: Text("Siderbar"),
                  ),
                ),
              )
            : null,
        body: Row(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: isPortrait ? 3 : 2,
                children: List.generate(
                  40,
                  (index) => Card(
                    color: Colors.orange,
                    child: Center(child: Text("Item $index")),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
