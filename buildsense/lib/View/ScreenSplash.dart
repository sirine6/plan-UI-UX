// ignore: file_names
import'package:flutter/material.dart';



class SplashScreen extends  StatelessWidget {
const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
             'images/logoConsR 2.png'
          ),

        ],

      ),
    );
  }
}