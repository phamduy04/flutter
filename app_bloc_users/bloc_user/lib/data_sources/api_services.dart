import 'dart:convert';

import 'package:bloc_user/data_sources/api_url.dart';
import 'package:bloc_user/models/user.dart';
import 'package:bloc_user/resources/utils/log.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<User>> fetchUserList() async {
    List<User> userList = [];
    var USER_LIST_URL = ApiUrl.USER_URL;
    http.Response response;
    try {
      response = await http.get(USER_LIST_URL);
      var jsonBody = jsonDecode(response.body);
      print('DATA :' + jsonBody.toString());
      Log().printJson(json: jsonBody);
      if (response.statusCode == 200) {
        var jsonList = jsonBody['results'];
        for (var json in jsonList) {
          User user = User.fromJson(json);
          userList.add(user);
        }
      }
      print(' length userList=' + userList.length.toString());
    } catch (e) {
      print("ERROR  LOADING:" + e.toString());
    }
    return userList;
  }
}
