import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/resources/widgets/card_user_item.dart';
import 'package:bloc_user/resources/widgets/text_infor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key? key, required  this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextInfor(title: 'Location'),
          CardUserItem(
              user: user,
              iconData: CupertinoIcons.building_2_fill,
              title: "City",
              subTitle: user.location!.city!,
               color: const Color(0xFF82B1FF),
              ),
          CardUserItem(
              user: user,
              iconData: Icons.room_outlined,
              title: "State",
              subTitle: user.location!.state!,
              color: const Color(0xFF82B1FF),
              ),
          CardUserItem(
              user: user,
              iconData: Icons.location_searching,
              title: "Country",
              subTitle: user.location!.country!,
              color: const Color(0xFF82B1FF),
              ),
          CardUserItem(
              user: user,
              iconData: Icons.post_add,
              title: "Post code",
              subTitle: user.location!.postcode!,
              color: const Color(0xFF82B1FF),
              ),
        ],
      ),
    );
  }
}
