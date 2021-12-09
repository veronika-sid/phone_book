import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/database/app_database.dart';
import 'package:phone_book/manager/api_manager.dart';
import 'package:phone_book/manager/database_manager.dart';
import 'package:phone_book/repository/user_repository.dart';

class RepositoryDownloader extends StatelessWidget {
  const RepositoryDownloader({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserRepository(
          database: DatabaseManager(database: MyDatabase()),
          apiManager: ApiManager()),
      child: child,
    );
  }
}
