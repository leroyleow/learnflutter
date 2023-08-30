import 'package:flutter/material.dart';

class WLayoutBuilderPage extends StatelessWidget {
  const WLayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 2,
          child: LayoutBuilder(
            builder: (context, constraints) => Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  '''View 1\n\n
                [MediaQuery]:\n ${screenSize.width.toStringAsFixed(2)}\n\n
                [LayoutBuilder]:\n${constraints.maxWidth.toStringAsFixed(2)}
                ''',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: LayoutBuilder(
            builder: (context, constraints) => Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  '''View 1\n\n
                [MediaQuery]:\n ${screenSize.width.toStringAsFixed(2)}\n\n
                [LayoutBuilder]:\n${constraints.maxWidth.toStringAsFixed(2)}
                ''',
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
