import 'package:app_movie_film/model/item_cast.dart';
import 'package:app_movie_film/widget/cast_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Cast extends StatelessWidget {
  const Cast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const SizedBox(
            height: 25,
          ),
          Text(
            'Cast',
            style: TextStyle(
              fontFamily: "Comfortaa",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: HexColor("#000000"),
                fontStyle: FontStyle.normal),
          ),
          const SizedBox(
            height: 30,
          ),
         
          SizedBox(
            height: 160,
            child: ListView.builder(
                itemCount: listItemCast.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CastItem(itemCast: listItemCast[index]);
                }),
          )
        ],
      ),
    );
  }
}
