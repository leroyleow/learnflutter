import 'package:currency_convertor/currency_convertor_cupertino_page.dart';
import 'package:currency_convertor/currency_convertor_material_page.dart';
import 'package:currency_convertor/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(const MyCupertinoApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //constructor syntax
  //below short syntax MyApp({Key? key}) : super({key: key})
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertorMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
