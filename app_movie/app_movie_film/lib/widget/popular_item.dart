import 'package:app_movie_film/model/item_popular.dart';
import 'package:app_movie_film/view/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({Key? key, required this.itemPopular}) : super(key: key);
  final ItemPopular itemPopular;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailScreen()));
      },
      child: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Container(
                    height: 237,
                    width: 175,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                            image: AssetImage(itemPopular.urlPhto),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                      right: 15,
                      bottom: 15,
                      child: Text(itemPopular.releaseDate,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Comfortaa",
                              color: HexColor("#FFFFFF"),
                              fontSize: 14,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700)))
                ],
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Text(
                  itemPopular.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                     fontFamily: "Comfortaa",
                      color: HexColor("#000000"),
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700),
                ),
              ))
        ],
      ),
    );
  }
}
