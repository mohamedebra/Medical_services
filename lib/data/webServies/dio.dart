import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio ;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://newsapi.org/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData(
      {required String url,
        required dynamic query}
      ) async {
    return await dio!.get(url, queryParameters: query);
  }


}



//https://mock-database-f1298.web.app/api/v1/users
//https://newsapi.org/v2/everything?q=tesla&from=2023-02-04&sortBy=publishedAt&apiKey=c9e2a047a41c43cca0ca5f777a0a82dc
//https://www.factal.com/?utm_term=breaking%20news%20api&utm_campaign=Factal+basic&utm_source=adwords&utm_medium=ppc&hsa_acc=1930374860&hsa_cam=1574177225&hsa_grp=61165124764&hsa_ad=510257308987&hsa_src=g&hsa_tgt=kwd-348192583633&hsa_kw=breaking%20news%20api&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gclid=Cj0KCQiA9YugBhCZARIsAACXxeLGAH_anmG4g1gI1GNzaYAVWa3ADNO5iG9I-QOgs3hqsXjgpKMALvcaAsoDEALw_wcB