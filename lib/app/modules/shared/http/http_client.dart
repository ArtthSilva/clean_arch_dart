import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

final $HttpClientAdapter = Bind.singleton((i) => HttpClientAdapter());
class HttpClientAdapter {
HttpClientAdapter() {
   client.options.baseUrl = 'https://642e4ed58ca0fe3352cccb03.mockapi.io';
    client.options.connectTimeout = const Duration(seconds: 5);
    client.options.receiveTimeout = const Duration(seconds: 3); 
}
  final client = Dio();


  Future get (String path,
  {Object? data,
  Map<String, dynamic>? queryParameters,
  Options? options,
  CancelToken? cancelToken,

  void Function(int, int)? onReceiveProgress}) async{

    var res = await client.get(path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress
        );

        return res.data;
  }
}