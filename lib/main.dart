import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Exo2',
        brightness: Brightness.light,
        primaryColor: AppColors.primary,),
      home: const Home(),
    );
  }
}