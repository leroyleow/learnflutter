import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key}) {
    print("Constructor");
  }

  @override
  State<LoginPage> createState() {
    print("CreateState");
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    print("InitState");
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Container();
  }
}
