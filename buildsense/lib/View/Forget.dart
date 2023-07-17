import 'package:flutter/material.dart';

import '../Utils/Colors.dart';



class Forget extends  StatefulWidget {
  const Forget({ Key? key }) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
   TextEditingController _EmailControlleur=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:Column(
        
        children: [
          const SizedBox(height: 60),
         SizedBox(
           height: 60,
           child: Align(
             alignment: Alignment.bottomLeft,
             child: Container(
               margin: const EdgeInsets.symmetric(horizontal: 25),
               decoration:  BoxDecoration(
                 shape: BoxShape.rectangle,
                 borderRadius: BorderRadius.circular(10),
                 color: arrowColor.withOpacity(0.1),
               ),
               child: const Padding(
                   padding: EdgeInsets.all(10),
                   child: Icon(Icons.arrow_back, color: Colors.black)),
             ),
           ),
         ),

           const  SizedBox(height: 40),
            Column(
              children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                      "Mot de passe oublié",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Veuillez saisir votre adresse e-mail ou numéro de téléphone pour réinitialiser votre mot de passe",
                      style: TextStyle(color: GrissColor),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Email",
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
                      controller: _EmailControlleur,
                      decoration: const InputDecoration(
                        hintText: "Exemple@gmail.com",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                 Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: BlueColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Réitinilialiser",
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

      ],),

    );
  }
}