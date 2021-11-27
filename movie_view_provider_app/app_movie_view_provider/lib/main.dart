import 'package:app_movie_view_provider/data_sources/api_services.dart';
import 'package:app_movie_view_provider/provider/movie_list_provider.dart';
import 'package:app_movie_view_provider/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (context)=>MovieListProvider())
       ],    
      child: GetMaterialApp(
        title: 'Flutter Demo',
         debugShowCheckedModeBanner:false,
      theme: ThemeData(
        fontFamily: "Comfortaa",
         visualDensity:  VisualDensity.adaptivePlatformDensity
      ),
        home: const HomeScreen(),
      ),
    );
  }
}
