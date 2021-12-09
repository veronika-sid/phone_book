import 'package:drift/drift.dart';

class UserTable extends Table {
  DateTimeColumn get createdAt => dateTime()();

  TextColumn get name => text()();

  TextColumn get avatar => text()();

  IntColumn get id => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
