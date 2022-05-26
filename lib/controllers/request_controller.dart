import 'package:beepz/models/request_model.dart';
import 'package:flutter/foundation.dart';

import '../services/data_service.dart';

class RequestController extends ChangeNotifier {
  bool? _dataLoaded;
  bool get dataLoaded => _dataLoaded!;
  late DataService _service;
  List<RequestModel>? requestModel = [];
  List<RequestModel> get request => requestModel!;

  RequestController() {
    _dataLoaded = false;
    _service = DataService();
    getData();
  }

  void getData() async {
    requestModel = await _service.getData();
    _dataLoaded = true;
    notifyListeners();
  }
}
