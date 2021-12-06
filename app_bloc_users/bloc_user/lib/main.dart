import 'package:bloc_user/blocs/user_list_bloc.dart';
import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/views/user_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final userBloc = UserListBloc();
  @override
  Widget build(BuildContext context) {
    userBloc.fetchUserListBloc();
    return StreamProvider<List<User>>(
      create: (context) => userBloc.userListStream,
      initialData: [],
      catchError: (context, error) {
        return [];
      },
      child: const GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: UserListScreen(),
      ),
    );
  }
}
