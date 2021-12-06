import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/resources/widgets/picture_item.dart';
import 'package:bloc_user/resources/widgets/text_infor.dart';
import 'package:flutter/material.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextInfor(title: "Picture"),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PictureItem(user: user, networkImage: user.picture!.thumbnail!),
              PictureItem(user: user, networkImage: user.picture!.medium!),
              PictureItem(user: user, networkImage: user.picture!.large!),  
            ],
          ),
        ],
      ),
    );
  }
}

