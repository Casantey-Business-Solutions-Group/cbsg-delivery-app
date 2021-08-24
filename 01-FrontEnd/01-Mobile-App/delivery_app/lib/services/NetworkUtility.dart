import 'dart:io';

import 'package:http/http.dart' as http;

class NetworkUtility {
  Future<String> getData(String url) async {
    String result = '500';
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        result = response.body;
      } else {
        result = response.statusCode.toString();
      }
    } catch (e) {
      print('Network Service Error: ${e.toString()}');
      return result;
    }
    return result;
  }

  Future<String> getDataWithAuth({String url, String auth}) async {
    String result;
    Map<String, String> headers = {HttpHeaders.authorizationHeader: auth};
    try {
      http.Response response = await http.get(url, headers: headers);
      if (response.statusCode == 200) {
        result = response.body;
      } else {
        result = response.statusCode.toString();
      }
    } catch (e) {
      print('Network Service Error: ${e.toString()}');
    }
    return result;
  }

  Future<String> postData({String url, String body}) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String result = "500";
    try {
      http.Response response =
          await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        result = response.body;
      } else {
        result = response.statusCode.toString();
      }
    } catch (e) {
      print('Network Service Error: ${e.toString()}');
      return result;
    }
    return result;
  }

  Future<String> postDataWithAuth(
      {String url, String body, String auth}) async {
    Map<String, String> headers = {
      "Content-type": "application/json",
      HttpHeaders.authorizationHeader: auth
    };
    String result = "500";
    try {
      http.Response response =
          await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        result = response.body;
      } else {
        result = response.statusCode.toString();
      }
    } catch (e) {
      print('Network Service Error: ${e.toString()}');
      return result;
    }
    return result;
  }
}
