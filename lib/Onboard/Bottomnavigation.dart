import 'package:demo_app/BMI_Calculator/bmi.dart';
import 'package:demo_app/BMI_Calculator/result.dart';
import 'package:demo_app/Profile/profile.dart';
import 'package:demo_app/home.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  List<Widget> pages = [ HomePage(), profilepage(), bmiclculate(), Resultpage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },

        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.blue,
            label: "Home",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person_outline),
          backgroundColor: Colors.indigo,
          label: "Profile"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined),
            backgroundColor: Colors.green,
            label: "BMI Calculator"
          ),

        ]
        ),
    );
  }
}