import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/resources/widgets/card_user_item.dart';
import 'package:bloc_user/resources/widgets/dob_widget.dart';
import 'package:bloc_user/resources/widgets/location_widget.dart';
import 'package:bloc_user/resources/widgets/login_widget.dart';
import 'package:bloc_user/resources/widgets/picture_widget.dart';
import 'package:flutter/material.dart';

class CardUserInfor extends StatelessWidget {
  const CardUserInfor({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          const SizedBox(
          height: 10,
            ),
        PictureWidget(user: user),
          const SizedBox(
          height: 10,
            ),
        CardUserItem(
            user: user,
            iconData: Icons.email_outlined,
            title: "Email",
            subTitle: user.email!,
             color: Colors.white,
            ),
        const SizedBox(
          height: 10,
            ),
        CardUserItem(
            user: user,
            iconData: Icons.call,
            title: "Phone",
            subTitle: user.phone!,
              color: Colors.white,
            ),
        const SizedBox(
          height: 10,
        ),
         LoginWidget(user: user) ,   
        const SizedBox(
          height: 10,
        ),
        DobWidget(user: user),
          const SizedBox(
          height: 10,
        ),
         LocationWidget(user: user),
          ],
        );
  }
}

