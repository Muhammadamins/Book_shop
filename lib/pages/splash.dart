import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushNamed('/news');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 80,
          ),
          const Center(
            child: Text(
              'Book Shop',
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.w900),
            ),
          ),
         const  SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              'assets/gif/splash.jpeg', 
              width: 300,
              height: 300, 
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 250,
          ),
         const  CupertinoActivityIndicator(),
    
        ],
      ),
    );
  }

}
