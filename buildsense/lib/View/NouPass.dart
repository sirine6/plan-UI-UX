import 'package:flutter/material.dart';

import '../Utils/Colors.dart';

class NouvPass extends StatefulWidget {
  const NouvPass({Key? key}) : super(key: key);

  @override
  State<NouvPass> createState() => _NouvPassState();
}

class _NouvPassState extends State<NouvPass> {
  TextEditingController MotPasseControlleur=TextEditingController();
  bool obscureText=true;
  String _password= '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         const  SizedBox(height: 60),
          SizedBox(
            height: 60,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.arrow_back, color: Colors.black)),
              ),
            ),
          ),
          const SizedBox(height: 60),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Entrez votre nouveau mot de passe",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Mot de passe",
                style: TextStyle(
                    color: bluesColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: GrisColor),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: MotPasseControlleur,
                //obscureText: true,
                enableSuggestions: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Mot de passe ",
                  
                  suffix: InkWell(
                    onTap: () {
                      obscureText  = !obscureText;
                    },
                    child: Icon(obscureText?
                      Icons.visibility:Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                ),
                onSaved : (value){
                   _password = value!;
                  },
                  obscureText: true,
              ),
            ),
          ),
          const SizedBox(height: 15),
           Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "confirmez mot de passe",
                style: TextStyle(
                    color: bluesColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
           Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: GrisColor),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: MotPasseControlleur,
                
                enableSuggestions: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "entrez votre  mot de passe ",
                  
                  suffix: InkWell(
                    onTap: () {
                      obscureText  = !obscureText;
                    },
                    child: Icon(obscureText?
                      Icons.visibility:Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                ),
                onSaved : (value){
                   _password = value!;
                  },
                  obscureText: true,
              ),
            ),
          ),
           const SizedBox(height: 50),
                 Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: BlueColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Continuer",
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
    );
  }
}
