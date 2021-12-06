import 'package:bloc_user/blocs/user_list_bloc.dart';
import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/resources/string.dart';
import 'package:bloc_user/resources/widgets/user_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final UserListBloc userListBloc = UserListBloc();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userListBloc.fetchUserListBloc();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userListBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var userList = Provider.of<List<User>>(context);
    print('userList=' + userList.toString());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.amber, Colors.blueAccent])),
          ),
          title: const Text(
            TITLE_HOME,
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: Get.width,
          height: Get.height,
          child: userList.length != null
              ? ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index) {
                    User user = userList[index];
                    return UserItem(user: user);
                  })
              : const Center(child: CircularProgressIndicator()),
        ));
  }
}

