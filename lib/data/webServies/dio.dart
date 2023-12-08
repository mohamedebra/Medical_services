import 'package:dio/dio.dart';
import 'package:medical_services/constants/string.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: buseUrl,
      receiveDataWhenStatusError: true,

    ));
  }

  static Future<Response> getData(
      {required String url, data }) async {
    return await dio!.get(url, onReceiveProgress: data);
  }

  static Future<Response> postData(
      {required String url,data }) async {
    return await dio!.post(url, data:data );
  }

}
