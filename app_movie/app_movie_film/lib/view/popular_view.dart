import 'package:app_movie_film/model/item_popular.dart';
import 'package:app_movie_film/widget/popular_item.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PopularView extends StatefulWidget {
  const PopularView({Key? key}) : super(key: key);

  @override
  _PopularViewState createState() => _PopularViewState();
}

class _PopularViewState extends State<PopularView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.62,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 30),
      itemCount: listPoular.length,
      itemBuilder: (context, index) {
        return PopularItem(itemPopular: listPoular[index]);
      },
    );
  }
}
