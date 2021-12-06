import 'package:bloc_user/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardUserItem extends StatelessWidget {
  const CardUserItem({
    Key? key,
    required this.user,
    required this.iconData,
    required this.title,
    required this.subTitle,
    required this.color,
  }) : super(key: key);

  final User user;
  final String title;
  final String subTitle;
  final IconData iconData;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('You clicked card user item');
      },
      child: Card(
        margin: EdgeInsets.all(10),
        color: color,
        child: ListTile(
            leading: Icon(
              iconData,
              size: 24,
              color: Colors.black,
            ),
            title: Text(
              title.toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(subTitle),
            trailing:
                const Icon(Icons.arrow_forward_sharp, size: 30, color: Colors.black)),
      ),
    );
  }
}
