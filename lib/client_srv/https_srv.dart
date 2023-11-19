import 'dart:convert' as convert;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpsService {
  
  // get mehtod
  Future getData({required String url}) async {
    final getUrl = Uri.https(url);

    final response = await http
        .get(getUrl)
        .timeout(const Duration(milliseconds: 5000), onTimeout: () {
      if (kDebugMode) print('Time Out');
      throw const Text('Time Out');
    });
    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (kDebugMode) print('Response ok: ${response.statusCode}');
      return data;
    } else {
      if (kDebugMode) print('Request failed status: ${response.statusCode}.');
      return 'failed';
    }
  }

  //post method
  Future postData(
      {required String url,
      Map<String, String>? header,
      required Map<String, dynamic> body}) async {
    Map<String, String> defultHeader = {'contentType': 'application/json'};
    final postUrl = Uri.https(url);
    var response =
        await http.post(postUrl, headers: header ?? defultHeader, body: body);
    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      if (kDebugMode) print('Response ok: ${response.statusCode}');
      return data;
    } else {
      if (kDebugMode) print('Response body: ${response.body}');
      return 'failed';
    }
  }
}
