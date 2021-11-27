import 'package:app_selling_books_online_provider/provider/khach_hang_list_provider.dart';
import 'package:app_selling_books_online_provider/view/home_screen.dart';
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
        ChangeNotifierProvider(create: (context)=>KhListProvider()),
      ],
      child: const GetMaterialApp(
        title: 'Flutter Demo',     
        home: Home(),
      ),
    );
  }
}

