import 'package:flutter/material.dart';

import '../Utils/Colors.dart';

class Information extends StatefulWidget {

   const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {

  final TextEditingController _EmailController = TextEditingController();

    final TextEditingController _NumeroController = TextEditingController();

   TextEditingController countryController = TextEditingController();

  @override
  
  void initState() {
   
    countryController.text = "+888";
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
         const SizedBox(height: 80),
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           
            children: [
            const  Padding(
                padding: EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child:  Text("Gérer mes informations",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              const SizedBox(height: 30),
              Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Email Adresse",
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
                      controller: _EmailController,
                      decoration: const InputDecoration(
                        hintText: "Entre votre  adresse email",
                        border: InputBorder.none,
                      ),
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
                      "Numéro de téléphone",
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                   const  SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 50,
                      child: TextField(
                        controller: countryController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                        child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Entrez votre numéro ",
                      ),
                    ))
                  ],
                ),
              ),
             const SizedBox(height: 100),
             Container(
            
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: BlueColor,
                      borderRadius: BorderRadius.circular(5)),
                  child:const Center(
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
           )
       
           
         
        
                 
          
        ],
      ),
    );
  }
}
