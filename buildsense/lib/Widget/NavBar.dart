import 'package:buildsense/Utils/Colors.dart';
import 'package:flutter/material.dart';

import '../View/ExploreScreen.dart';
import '../View/PlanScreen.dart';
import '../View/Profile.dart';



class NavBar   extends StatefulWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex=0;
  final _screens =[
    PlanScreen(),
    const ExploreScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white, 
     body: _screens[_selectedIndex],
     bottomNavigationBar: Container(
      height: 80,
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type:BottomNavigationBarType.fixed,
        selectedItemColor: bluesColor,
        unselectedItemColor: Colors.black26,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,

        ),
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
        items:const  [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),
          label:"Home"),
           BottomNavigationBarItem(icon: Icon(Icons.abc_sharp),
          label:"EXPLORER"),
           BottomNavigationBarItem(icon: Icon(Icons.person),
          label:"Profile"),


        ],
      ),

     ),
    );
  }
}