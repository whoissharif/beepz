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
        Uri.parse(Urls.baseUrl),
      );

      if (response.statusCode == 200) {
        log('message');
        map = json.decode(response.body);
        
        temp = map["data"]["data"];
        log('$temp');
        for (var e in temp) {
          list.add(RequestModel.fromJson(e));
        }
        log(list.toString());
      }
    } catch (e) {
      log(e.toString());
    }
    return list;
  }
}
