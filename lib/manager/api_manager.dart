import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class IApiManager {
  Future<dynamic> getUsers(String url);

  Future<void> addUser(String url, String name);

  Future<void> deleteUser(String url);
}

class ApiManager extends IApiManager {

  @override
  Future<void> addUser(String url, String name) async {
    try {
     await http.post(Uri.parse(url), body: {'name': name});
    } catch (statusCode) {
      if(statusCode !=200 || statusCode !=201) {
        print('statusCode: $statusCode');
        rethrow;
      }
    }
  }

  @override
  Future<void> deleteUser(String url) async {
    try {
      await http.delete(Uri.parse(url));
    } catch (statusCode) {
      if(statusCode !=200 || statusCode !=201) {
        print('statusCode: $statusCode');
        rethrow;
      }
    }
  }

  @override
  Future<dynamic> getUsers(String url) async {
    try {
      Response response = await http.get(Uri.parse(url));
      print('Response status: ${response.statusCode}');
      if (response.statusCode == 200) {
        return json.decode(response.body);
      }
    } catch (statusCode) {
      if(statusCode !=200 || statusCode !=201) {
        print('statusCode: $statusCode');
        rethrow;
      }
    }
  }

}
