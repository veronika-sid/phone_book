part of '../daos/user_dao.dart';

List<User> mapToUserList(List<UserTableData> dbUser) {
  return dbUser.map((e) => mapToUser(e)).toList();
}

List<UserTableData> mapToDbUserList(List<User> users) {
  return users.map((e) => mapToDbUser(e)).toList();
}

UserTableData mapToDbUser(User user) {
  return UserTableData(
    createdAt: user.createdAt,
    name: user.name,
    avatar: user.avatar,
    id: user.id,
  );
}

User mapToUser(UserTableData dbUser) {
  return User(
    createdAt: dbUser.createdAt,
    name: dbUser.name,
    avatar: dbUser.avatar,
    id: dbUser.id,
  );
}
