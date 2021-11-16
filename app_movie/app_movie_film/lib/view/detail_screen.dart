import 'package:app_movie_film/model/item_popular.dart';
import 'package:app_movie_film/widget/cast.dart';
import 'package:app_movie_film/widget/header.dart';
import 'package:app_movie_film/widget/over_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Colors.black,
            )),
        actions: [
           Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/image/background1.jpeg",
            fit: BoxFit.cover,
            height: size.height,
          ),
          Container(
            height: size.height,
            color: Colors.white.withOpacity(0.8),
          ),
           _body(context)
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: [
          SizedBox(
          height: 30,
        ),
          Header(),
         SizedBox(height:20),
         Cast(),
         SizedBox(height:20),
         OverView(),
      ],
    );
  }
  
  
   
}
