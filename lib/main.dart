import 'package:flutter/material.dart';
import 'package:phone_book/widgets/data_downloader.dart';
import 'package:phone_book/widgets/repository_downloader.dart';

import 'app.dart';

void main() {
  runApp(const RepositoryDownloader(child: DataDownloader(child: MyApp())));
}
