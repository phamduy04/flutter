import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/views/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('YOU CLICKED HERE');
        Get.to(DetailScreen(user: user));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(user.picture!.medium!),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.name!.first!.toUpperCase() +
                        " " +
                        user.name!.last!.toUpperCase()),
                    Text(user.email!),
                  ],
                ),
              ),
            ],
          ),
           const Padding(
             padding: EdgeInsets.only(right: 20),
             child: Icon(Icons.arrow_forward_sharp,
                    size: 30, color: Colors.black),
           )
        ],
      ),
    );
  }
}
