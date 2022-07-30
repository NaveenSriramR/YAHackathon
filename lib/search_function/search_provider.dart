import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import '../utils/utils.dart';

class SearchProvider {
  final storage = const FlutterSecureStorage();

  Future<List> searchResults(
      {required String query, String category = ''}) async {
    print(query);
    print('getting data ...');
    // final token = await storage.read(key: 'token');
    // print(token);
    try {
      final response = await http.post(
        Uri.parse("http://192.168.200.221:8000/api/search/'he'"),
        body: json.encode({
          "query": query,
          "category": category,
        }),
        headers: {
          ...Utils.headerValue,
          // 'auth-token': token!,
        },
      );
      print(response);
      final responseData = json.decode(response.body);
      print(responseData);
      print('here');

      return responseData;
    } catch (error) {
      print(error);
      return [];
    }
  }
}
