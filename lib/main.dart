import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/screens/about_screen.dart';
import 'package:medical_pharmacy_app/screens/categories_screen.dart';
import 'package:medical_pharmacy_app/screens/detalis_product_screen.dart';
import 'package:medical_pharmacy_app/screens/home_screen.dart';
import 'package:medical_pharmacy_app/screens/launch_screen.dart';
import 'package:medical_pharmacy_app/screens/product_screen.dart';
import 'package:medical_pharmacy_app/screens/on_boarding/on_boarding_screen.dart';

void main ()=> runApp(MyApp());
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_Screen',
      routes: {
        '/launch_Screen': (context) => LaunchScreen(),
        '/on_boarding_screen': (context)=> OnBoardingScreen(),
        '/categories_screen' : (context)=>CategoriesScreen(),
        '/home_screen' : (context)=> HomeScreen(),
        '/about_screen':(context)=>AboutScreen(),




      },

    );
  }
}
