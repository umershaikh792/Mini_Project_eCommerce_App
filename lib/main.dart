import 'package:flutter/material.dart';
// import 'package:mini_project/Homepage/fun.dart';
// import 'package:mini_project/Homepage/anas.dart'; 
import 'package:mini_project/Onboarding/onboarding_screen.dart';
// import 'package:mini_project/Onboarding/onboarding_screen.dart';
// import 'Homepage/vertical_products.dart';
// import 'Onboarding/onboarding_screen.dart';
// import 'Homepage/homepage.dart';
// import 'Homepage/homepage.dart';
// import 'Category/category1.dart';
// import 'Homepage/fun.dart';
// import 'Homepage/products_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xff2a4ba0)),
      home: Onboarding(),
    );
  }
}
