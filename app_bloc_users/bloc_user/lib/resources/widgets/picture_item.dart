import 'package:bloc_user/models/user.dart';
import 'package:flutter/material.dart';

class PictureItem extends StatelessWidget {
  const PictureItem({
    Key? key,
    required this.user,
    required this.networkImage,
  }) : super(key: key);

  final User user;
  final String networkImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
           border: Border.all(color: Colors.white, width: 1.5),
          image: DecorationImage(image: NetworkImage(networkImage))),
    );
  }
}
