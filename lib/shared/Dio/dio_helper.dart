import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static initDio() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/3/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static List trendingMovies = [];
  static List topRatedMovies = [];
  static Future getMoviesData(
      {required String url, required Map<String, dynamic> query}) async {
    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}
