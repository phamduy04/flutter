import 'package:app_movie_film/model/item_popular.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                height: 153,
                width: 113,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        image: AssetImage(listPoular[0].urlPhto),
                        fit: BoxFit.cover)),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listPoular[0].name,
                      style: TextStyle(
                          fontFamily: "Comfortaa",
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: HexColor("#000000"),
                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Text(
                          'xuất bản :',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Comfortaa",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          listPoular[0].releaseDate,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontFamily: "Comfortaa",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'thể loại:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Comfortaa",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Expanded(
                            flex: 2,
                            child: Text(
                              "Phim Hoạt Hình, Phim Phiêu Lưu, Phim Giả Tượng, Phim Gia Đình, Phim Hành Động",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Comfortaa",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal),
                            ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
