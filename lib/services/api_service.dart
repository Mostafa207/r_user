import 'package:dio/dio.dart';
import '../models/api_model.dart';

class ApiService {
  static var dio = Dio();

  static Future<UserModel> getAll() async {
    var response = await dio.get('https://randomuser.me/api/?results=10');
    return UserModel.getData(response.data);
  }
}
