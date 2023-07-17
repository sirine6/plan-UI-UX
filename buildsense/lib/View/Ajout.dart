import 'package:flutter/material.dart';

import '../Utils/Colors.dart';



class Ajout extends  StatelessWidget {
  const Ajout ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      body: Column(
       
        children: [
        const  SizedBox(height:60),
               SizedBox(
           height: 60,
           child: Align(
             alignment: Alignment.bottomLeft,
             child: Container(
               margin: const EdgeInsets.symmetric(horizontal: 25),
               decoration:  BoxDecoration(
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
         const SizedBox(height: 20,),
         Center(child: Text("Ajout",style: TextStyle(color: bluesColor,fontSize: 25,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}