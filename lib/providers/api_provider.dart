import 'package:flutter/cupertino.dart';

import '../models/api_model.dart';
import '../services/api_service.dart';

class HomePageProvider with ChangeNotifier {
  UserModel? users;

  Future<void> setData() async {
    users = await ApiService.getAll();
    notifyListeners();
  }
}
