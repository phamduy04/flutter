import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/resources/widgets/card_user_item.dart';
import 'package:bloc_user/resources/widgets/text_infor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DobWidget extends StatelessWidget {
  const DobWidget({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
   return Container(
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextInfor(title: 'Dob'),
          CardUserItem(
              user: user,
              iconData: Icons.cake,
              title: "Date",
              subTitle: user.dob!.date!,
              color: const Color(0xFFE1BEE7),
              ),
          CardUserItem(
              user: user,
              iconData: Icons.person_pin,
              title: "Age",
              subTitle: user.dob!.age!.toString(),
              color: const Color(0xFFE1BEE7),
              ),
         
        ],
      ),
    );
  }
}
