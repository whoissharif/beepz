import 'dart:convert';
import 'dart:developer';
import 'package:beepz/constants/urls.dart';
import 'package:beepz/models/request_model.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<List<RequestModel>?> getData() async {
    Map<String, dynamic> map;
    List<dynamic> temp;
    List<RequestModel> list = [];
    try {
      var response = await http.get(
        Uri.parse(Urls.baseUrl + Urls.customerRequestUrl),
      );

      if (response.statusCode == 200) {
        map = json.decode(response.body);
        temp = map["data"]["data"];
        for (var e in temp) {
          list.add(RequestModel.fromJson(e));
        }
      }
    } catch (e) {
      log(e.toString());
    }
    return list;
  }
}
