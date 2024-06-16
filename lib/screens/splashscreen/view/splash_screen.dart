import 'dart:async';

import 'package:flutter/material.dart';

import '../../homescreen/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () { Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));});
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40 , top: 100),
            child: Container(
                height: 350,
                width: 350,
                child: Column(
                  children: [
                    Image.asset('asset/img/l3.png'),
                    Text('Musical.ly', style: TextStyle(color: Colors.pinkAccent , fontSize: 35 , fontWeight: FontWeight.w500),)
                  ],
                )
            ),
          ),


        ],
      ),
    );
  }
}
