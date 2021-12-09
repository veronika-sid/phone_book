import 'package:drift/drift.dart';
import 'package:phone_book/database/tables/user_table.dart';
import 'package:phone_book/models/user.dart';

import '../app_database.dart';

part '../mappers/user_mapper.dart';

part 'user_dao.g.dart';

@DriftAccessor(tables: [UserTable])
class UserDao extends DatabaseAccessor<MyDatabase> with _$UserDaoMixin {
  UserDao(MyDatabase db) : super(db);

  Stream<List<User>> watchUsers() {
    return select(userTable).watch().map((event) {
      return mapToUserList(event);
    });
  }

  Future<void> saveUserList(List<User> users) async {
    await batch((b) {
      b.insertAll(
        userTable,
        mapToDbUserList(users),
        mode: InsertMode.insertOrReplace,
      );
    });
  }

  Future<void> updateUserDb(List<User> users) async {
    await batch((b) {
      b.replaceAll(
        userTable,
        mapToDbUserList(users),
      );
    });
  }
}
