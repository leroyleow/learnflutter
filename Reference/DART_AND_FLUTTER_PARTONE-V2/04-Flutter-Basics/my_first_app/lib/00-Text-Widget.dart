import 'package:flutter/material.dart';

// For now this will need to be a const
// Otherwise you'll get an error!
const UserName = 'Jose';
// MORE INFO ON TEXTSTYLE:
// https://api.flutter.dev/flutter/painting/TextStyle-class.html
void main() {
  runApp(
    const Center(
      child: Text(
        'Hello, $UserName',
        textDirection: TextDirection.ltr,
        style: const TextStyle(color: Colors.deepOrange, fontSize: 50),
      ),
    ),
  );
}
