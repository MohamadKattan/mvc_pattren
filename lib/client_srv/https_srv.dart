import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:mvc_pattren/client_srv/api_status.dart';
import 'package:mvc_pattren/utils/constants.dart';

class HttpSrv {
  // get mehtod
  Future getData({required String url}) async {
    try {
      final getUrl = Uri.https(url);
      final response = await http
          .get(getUrl)
          .timeout(const Duration(milliseconds: countTimeOutHttp), onTimeout: () {
        throw Failur(errorResponse: timeOutMsg, code: 100);
      });
      if (response.statusCode == 200) {
        final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
        return Success(code: response.statusCode, response: data);
      } else {
        return Failur(
            errorResponse: errorResponseMsg, code: response.statusCode);
      }
    } catch (e) {
      return Failur(errorResponse: e.toString(), code: 500);
    }
  }

  //post method
  Future postData(
      {required String url,
      Map<String, String>? header,
      required Map<String, dynamic> body}) async {
    try {
      final postUrl = Uri.https(url);
      var response = await http
          .post(postUrl, headers: header ?? defultHeader, body: body)
          .timeout(const Duration(microseconds: countTimeOutHttp), onTimeout: () {
        throw Failur(errorResponse: timeOutMsg, code: 100);
      });
      if (response.statusCode == 200) {
        final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
        return Success(code: response.statusCode, response: data);
      } else {
        return Failur(
            errorResponse: errorResponseMsg, code: response.statusCode);
      }
    } catch (e) {
      return Failur(errorResponse: e.toString(), code: 500);
    }
  }
}
