import 'package:phone_book/manager/api_manager.dart';
import 'package:phone_book/manager/database_manager.dart';
import 'package:phone_book/models/user.dart';
import 'package:phone_book/resources/json_reader.dart';

abstract class IUserRepository {
  Stream<List<User>> watchUsers();

  Future<void> saveUserList(List<User> users);

  Future<void> updateUserDb(List<User> users);

  Future<dynamic> getUsersByApi();

  Future<void> addUser(String name);

  Future<void> deleteUser(int index);
}

class UserRepository extends IUserRepository {
  UserRepository({required this.apiManager, required this.database});

  final IDatabase database;
  final IApiManager apiManager;
  final String url = 'https://61ae0f52a7c7f3001786f5b7.mockapi.io/flutter';

  @override
  Future<void> saveUserList(List<User> users) async {
    await database.saveUserList(users);
  }

  @override
  Stream<List<User>> watchUsers() {
    return database.watchUsers();
  }

  @override
  Future<void> updateUserDb(List<User> users) async {
    await database.updateUserDb(users);
  }

  @override
  Future getUsersByApi() async {
    final response = await apiManager.getUsers(url + '/users');
    try {
      if (response != null) {
        JsonReader reader = JsonReader(response);
        final users =
            reader.asListOfObjects().map((e) => User.fromMap(e)).toList();
        return users;
      } else {
        return null;
      }
    } catch (statusCode) {
      rethrow;
    }
  }

  @override
  Future<void> addUser(String name) async {
    try {
      await apiManager.addUser(url + '/users', name);
    } catch (statusCode) {
      print('status is $statusCode');
      rethrow;
    }
  }

  @override
  Future<void> deleteUser(int index) async {
    try {
      await apiManager.deleteUser(url+ '/users' + '/$index');
    } catch (statusCode) {
      print('status is $statusCode');
      rethrow;
    }
  }
}
