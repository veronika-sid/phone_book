import 'package:phone_book/database/app_database.dart';
import 'package:phone_book/models/user.dart';

abstract class IDatabase {
  Stream<List<User>> watchUsers();

  Future<void> saveUserList(List<User> users);

  Future<void> updateUserDb(List<User> users);
}

class DatabaseManager extends IDatabase {
  DatabaseManager({
    required this.database,
  });

  final MyDatabase database;

  @override
  Future<void> saveUserList(List<User> users) async {
    return database.userDao.saveUserList(users);
  }

  @override
  Stream<List<User>> watchUsers() {
    return database.userDao.watchUsers();
  }

  @override
  Future<void> updateUserDb(List<User> users) async {
    return database.userDao.updateUserDb(users);
  }
}
