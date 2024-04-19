import 'dart:async';
import 'package:flutter/material.dart';
import 'package:store/screens/Onboarding/screen1.dart';

class welcome extends StatefulWidget {
  welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FirstOnboarding()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.7, // Adjust according to your design
          heightFactor: 0.5, // Adjust according to your design
          child: Image.asset(
            'assest/images/logo.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
