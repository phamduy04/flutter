import 'package:bloc_user/data_sources/repository.dart';
import 'package:bloc_user/models/user.dart';
import 'package:rxdart/rxdart.dart';

class UserListBloc {
  final _repository = Repository();
  final userSubject = PublishSubject<List<User>>();
  //put data//
  fetchUserListBloc() async {
    List<User> userList = await _repository.fetchAllUser();
    userSubject.sink.add(userList);
  }

  // lay stream//
  Stream<List<User>> get userListStream => userSubject.stream;

  dispose() {
    userSubject.close();
  }
}
