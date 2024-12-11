import 'package:dio/dio.dart';

class PictureService {
  final Dio dio;

  PictureService({required this.dio});

  Future<List> fetchPictures({int limit = 10, int page = 1}) async {
    final response = await dio.get('https://picsum.photos/v2/list', queryParameters: {
      'limit': limit,
      'page': page,
    });
    return response.data;
  }

  Future<Map> fetchPictureDetail(int id) async {
    final response = await dio.get('https://picsum.photos/id/$id/info');
    return response.data;
  }
}