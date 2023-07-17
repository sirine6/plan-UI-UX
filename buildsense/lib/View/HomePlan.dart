import 'package:flutter/material.dart';

import '../Utils/Colors.dart';

class HomePlan extends StatelessWidget {
  const HomePlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Bienvenu ,nom d'ingénieur",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: ajoutColor,
                    ),
                    child: Row(
                      children: const [
                        Text(
                          "Ajouter",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
