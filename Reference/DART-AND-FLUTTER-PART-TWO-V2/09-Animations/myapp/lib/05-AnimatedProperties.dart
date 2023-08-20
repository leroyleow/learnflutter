import 'package:flutter/material.dart';

void main() => runApp(const AnimatedSizeExampleApp());

class AnimatedSizeExampleApp extends StatelessWidget {
  const AnimatedSizeExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedSize Sample')),
        body: const Center(
          child: AnimatedSizeExample(),
        ),
      ),
    );
  }
}

class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({Key? key}) : super(key: key);

  @override
  _AnimatedSizeExampleState createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> {
  double _width = 100.0;
  double _height = 100.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _width = _large ? 100.0 : 250.0;
      _height = _large ? 100.0 : 250.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _updateSize(),
      child: ColoredBox(
        color: Colors.red,
        child: AnimatedSize(
          curve: Curves.easeIn,
          duration: const Duration(seconds: 1),
          child: SizedBox(
            width: _width,
            height: _height,
          ),
        ),
      ),
    );
  }
}
