import 'package:demo_app/BMI_Calculator/bmi.dart';
import 'package:demo_app/BMI_Calculator/result.dart';
import 'package:demo_app/Home.dart';
import 'package:demo_app/Onboard/Bottomnavigation.dart';
import 'package:demo_app/Profile/profile.dart';
import 'package:demo_app/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LoginPage() //homepage,profile,logic,
    );
  }
}
