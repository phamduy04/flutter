import 'package:app_movie_film/model/item_cast.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CastItem extends StatelessWidget {
  const CastItem({Key? key, required this.itemCast}) : super(key: key);
  final ItemCast itemCast;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                height: 124,
                width: 102,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(itemCast.urlPhoto),
                    )),
              )),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(itemCast.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                     fontFamily: "Comfortaa",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#000000"),
                      fontStyle: FontStyle.normal)),
              Text(itemCast.character,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Comfortaa",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: HexColor("#000000"),
                      fontStyle: FontStyle.normal)),
            ],
          )
        ],
      ),
    );
  }
}
