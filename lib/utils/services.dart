import 'dart:convert';

import 'package:fypapp/models/usermodel.dart';
import 'package:fypapp/utils/constants.dart';
import 'package:http/http.dart' as http;

class Services {
  static Future<Map<String, dynamic>> _request(
      String url, Map<dynamic, dynamic> data) async {
    var header = {'Content-Type': 'application/json'};
    var response = await http.post(Constants.baseUrl + url,
        body: jsonEncode(data), headers: header);
    var result = jsonDecode(response.body);
    if (result['status'] == 401) {
      return {'result': false, "message": jsonDecode(response.body)['message']};
    }
    return {'result': true, 'data': result};
  }

  static Future<Map<dynamic, dynamic>> login(
      String email, String password) async {
    var res =
        await _request('user/login', {'email': email, 'password': password});
    if (res['result'] == false) {
      return res;
    } else {
      return {"result": true, 'data': UserModel.parseMap(res['data'])};
    }
  }

  static Future<Map<dynamic, dynamic>> register(String email, String password,
      String name, String number, context) async {
    var res = await _request('user',
        {'email': email, 'password': password, 'name': name, 'number': number});
    if (res['result'] == false) {
      return res;
    } else {
      return {'result': true, 'data': UserModel.parseMap(res['data'])};
    }
  }
}
