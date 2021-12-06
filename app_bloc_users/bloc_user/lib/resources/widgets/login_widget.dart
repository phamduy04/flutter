import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/resources/widgets/card_user_item.dart';
import 'package:bloc_user/resources/widgets/text_infor.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextInfor(title: 'Login'),
          CardUserItem(
              user: user,
              iconData: Icons.person,
              title: "Username",
              subTitle: user.login!.username!,
              color:  const Color(0xFF66BB6A),
              ),
          CardUserItem(
              user: user,
              iconData: Icons.lock,
              title: "Password",
              subTitle: user.login!.password!,
              color:  const Color(0xFF66BB6A),
              ),
         
        ],
      ),
    );
  }
}
