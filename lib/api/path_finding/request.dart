import 'package:dio/dio.dart';

import 'dto.dart';

class PathApi {
  static const baseUrl = 'https://flutter.webspark.dev';
  final Dio dio = Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );

  Future<PathDto> getPoints(String url) async {
    try {
      final res = await dio.get(url);
      final pathDto = PathDto.fromJson(res.data);
      if (pathDto.error == true) {
        throw Exception(pathDto.message);
      } else {
        return pathDto;
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> postPoints(List<ResultDto> points) async {
    try {
      final res = await dio.post('$baseUrl/flutter/api', data: points);
      if (res.data['error'] == true) {
        throw Exception(res.data['message']);
      } else {
        return;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
