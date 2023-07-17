import 'package:flutter/material.dart';

import '../Utils/Colors.dart';

class Changer extends StatefulWidget {
  const Changer({Key? key}) : super(key: key);

  @override
  State<Changer> createState() => _ChangerState();
}

class _ChangerState extends State<Changer> {
  TextEditingController Anciencontrolleur = TextEditingController();

  TextEditingController Nouveaucontrolleur = TextEditingController();

  TextEditingController Confirmercontrolleur = TextEditingController();

  bool obscureText = true;

  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: bluesColor,
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.arrow_back_ios, color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Changer le mot de passe ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Ancien Mot de passe",
                      style: TextStyle(
                          color: bluesColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: GrisColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: Anciencontrolleur,
                      obscureText: true,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Tapez votre ancien mot de passe",
                        suffix: InkWell(
                          onTap: () {
                            obscureText = !obscureText;
                          },
                          child: Icon(
                            obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Nouveau mot de passe",
                      style: TextStyle(
                          color: bluesColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: GrisColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: Nouveaucontrolleur,
                      obscureText: true,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Tapez votre nouveau mot de passe",
                        suffix: InkWell(
                          onTap: () {
                            obscureText = !obscureText;
                          },
                          child: Icon(
                            obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "COnfirmez le mot de passe ",
                      style: TextStyle(
                          color: bluesColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: GrisColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: Confirmercontrolleur,
                      obscureText: true,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Retapez votre mot de passe",
                        suffix: InkWell(
                          onTap: () {
                            obscureText = !obscureText;
                          },
                          child: Icon(
                            obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      onSaved: (value) {
                        _password = value!;
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: BlueColor, borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Enregistrer",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
