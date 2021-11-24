import 'package:app_movie_view/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        fontFamily: "Comfortaa",
         visualDensity:  VisualDensity.adaptivePlatformDensity
      ),
      home: const HomeScreen(),
    );
  }
}

