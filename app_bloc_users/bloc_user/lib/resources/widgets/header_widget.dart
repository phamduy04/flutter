import 'package:bloc_user/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                height: 150,
                color:Colors.deepPurpleAccent,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 110),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1.5),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage(user.picture!.medium!),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  user.name!.title! +
                      "." +
                      user.name!.first! +
                      " " +
                      user.name!.last!,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
      ],
    );
  }
}
