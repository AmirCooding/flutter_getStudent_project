import 'package:dio/dio.dart';

// too in klass nrghdarie mikonim az instance Http Client
// barye inke tanzimat Dio ra yekbar anjam midahim va too kole project az un estfade mikonim
class HttpClient {
  static Dio instanceOfDio = Dio(BaseOptions(
    baseUrl: 'http://expertdevelopers.ir/api/v1/',
  ));
}
