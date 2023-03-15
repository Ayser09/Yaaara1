import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_icons/line_icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../Fitness/fitness.dart';
import '../calender/calender.dart';
import '../dashbaord/dashboard.dart';
import '../health/health.dart';

class MainPage extends StatefulWidget {
   const MainPage({Key? key}) : super(key: key);

   @override
   State<MainPage> createState() => _MainPageState();
 }

 class _MainPageState extends State<MainPage> {

    List pages = [
      Dashboard(),
      HealthPage(),
      FitnessPage(),
      Calendar(),
    ];
  int currentIndex = 0;
    void onTap(int index){
      setState(() {
        currentIndex = index;
      });
    }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: pages[currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         onTap: onTap,
         selectedFontSize: 0,
         unselectedFontSize: 0,
         showUnselectedLabels: false,
         showSelectedLabels: true,
         currentIndex: currentIndex,
         selectedItemColor: Colors.black54,
         unselectedItemColor: Colors.grey.withOpacity(0.5),
         elevation: 0,
         items: [
           BottomNavigationBarItem(icon: Icon(LineIcons.home,), label: "Home"),
           BottomNavigationBarItem(icon: Icon(
             LineIcons.heart,
           ), label: "Health"),
           BottomNavigationBarItem( icon: Icon(
             LineIcons.barChart,
           ), label: "Fitness"),
           BottomNavigationBarItem( icon: Icon(
             LineIcons.calendar,
           ), label: "Calender"),
         ],

       )
     );
   }
 }



