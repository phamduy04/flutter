import 'dart:ui';
import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/resources/string.dart';
import 'package:bloc_user/resources/widgets/card_user_infor.dart';
import 'package:bloc_user/resources/widgets/header_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.amber, Colors.blueAccent])),
        ),
        title: const Text(
          TITLE_DETAIL,
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('You clicked');
              },
              icon: const Icon(Icons.favorite_border, size: 22, color: Colors.white))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: Get.width,
          // height: Get.height,
          color: Color(0xFF90A4AE),
          child: Column(         
            children: [
              HeaderWidget(user: user),             
              const SizedBox(
                height: 10,
              ),
              CardUserInfor(user: user),
              
            ],
          ),
        ),
      ),
    );
  }
}

