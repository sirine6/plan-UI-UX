import 'package:buildsense/View/SignIn.dart';
import 'package:flutter/material.dart';

import '../Utils/Colors.dart';
import 'Login.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset(
            "images/logoConsR 2.png",
            width: 270,
            height: 100,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: const Text(
                  "Rénovez votre approche de la gestion du pilotage d'un projet de construction",
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 14),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: BlueColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) =>const  SignIn()));
                    },
                    child: const Text(
                      "créer un compte",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Image.asset('images/Line 1.png'),
                const SizedBox(width: 10),
                const Text("ou",
                    style: TextStyle(color: Colors.black, fontSize: 17)),
                const SizedBox(width: 10),
                Image.asset('images/Line 1.png'),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: GrisColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Login()));
                    },
                    child: const Text(
                      "Se connecter",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
          const SizedBox(
            height: 70,
          ),
          Column(
            children: [
              const Text(
                "Demander demo",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset('images/Slidr now.png')
            ],
          )
        ],
      ),
    );
  }
}
