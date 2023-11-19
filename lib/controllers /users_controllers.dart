import 'package:flutter/foundation.dart';
import 'package:mvc_pattren/client_srv/api_status.dart';
import 'package:mvc_pattren/client_srv/https_srv.dart';
import 'package:mvc_pattren/error_handler/http_error.dart';

class UsersController extends ChangeNotifier {
  Future<void> getUsers() async {
    var response = await HttpSrv().getData(url: '');

    if (response is Success) {
      // do some thing as set data to map model
      if (kDebugMode) print(response.response);
      if (kDebugMode) print(response.code);
    }
    if (response is Failur) {
      // hendel error
      ErrorHttpHandler(code: response.code).displayErrorHttp();
      if (kDebugMode) print(response.errorResponse);
      if (kDebugMode) print(response.code);
    }
  }
}
