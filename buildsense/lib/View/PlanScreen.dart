import 'package:flutter/material.dart';

import '../Utils/Colors.dart';

class PlanScreen extends StatelessWidget {
  PlanScreen({Key? key}) : super(key: key);
  List imgs = [
    "image1.png",
    "image2.png",
    "image3.png",
    "image4.png",
    "image5.png",
    "image6.png",
  ];
  List dtring =[
    "Centre commercial Dijon",
    "Faculté de Medecine",
    "villa 6+s",
    "Hopital paris6",
    "Faculté de science",
    "Magasin"

  ];
  List progress =[
    "Progrés Construction:90%",
    "Progrés Construction:40%",
    "Progrés Construction:80%",
    "Progrés Construction:20%",
    "Progrés Construction:60%",
    "Progrés Construction:70%",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Projets de,nom d'ingenieur",
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
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Ajouter",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: rechColor,
                borderRadius: BorderRadius.circular(15),
                //border: Border.all(),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Explorer les projects",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: bluesColor,
                      ),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.filter_alt_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Filtrer",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
              itemCount: 6,
              shrinkWrap: true,
              physics:const  NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {},
                    child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                       
                        decoration: BoxDecoration(
                          color: rechColor,
                          borderRadius: BorderRadius.circular(10),
                      
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset("images/${imgs[index]}",height:100)),
                            ),
                           Text(
                              "${dtring[index]}",
                              style: const TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                              Text(
                              "${progress[index]}",
                              style:const TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
