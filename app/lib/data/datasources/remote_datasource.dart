import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:robot_task/data/models/update_speed_model.dart';

class RemoteDatasource {
  final Dio _dio;
  const RemoteDatasource(this._dio);

  Future<UpdateSpeedModel> getInitialSpeed() async {
    try {
      final Response response = await _dio.get('/DIRRHUB/robot_task/refs/heads/master/initial_speed');
      final Map<String, dynamic> responseData = jsonDecode(response.data as String);
      return UpdateSpeedModel.fromJson(responseData);
    } on DioException catch (e) {
      throw Exception(e.error);
    } catch (e) {
      throw Exception('Unknown error: $e');
    }
  }
}
