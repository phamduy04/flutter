import 'package:bloc_user/data_sources/api_services.dart';
import 'package:bloc_user/models/user.dart';

class Repository {
  ApiServices _apiServices = ApiServices();
  Future<List<User>> fetchAllUser() => _apiServices.fetchUserList();
}
