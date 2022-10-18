import 'package:dio/dio.dart';

//FOR QURAN APP
// base url:'https://api.quran.com/api/'
class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl:'https://api.aladhan.com/' ,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future <Response> getData({
    required String url,
    required Map <String,dynamic> query,
  }) async
  {
    return await dio.get
      (url,
      queryParameters: query,
    );

  }

}
