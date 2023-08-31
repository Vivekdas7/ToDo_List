import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todolist/screens/home.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
  
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(Duration(seconds: 3),(){
   Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Home()));
  });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.network('https://lottie.host/b2dd9fd5-65a1-46ed-95db-137a7c592dae/eRjvZYBk2i.json'),),
      );
  }
}