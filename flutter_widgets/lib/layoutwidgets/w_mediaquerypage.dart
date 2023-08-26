import 'package:flutter/material.dart';

class WMediaQueryPage extends StatelessWidget {
  const WMediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
          color: Colors.black45,
          child: Center(
            child: Text(
              "View:\n\nMediaQuery.width = ${size.width.toStringAsFixed(2)}\n\nMeidaQuery orientation = $orientation",
              style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.8), fontSize: 18),
            ),
          )),
    );
  }
}
