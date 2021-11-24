import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_qiita_reader_sample/models/qiita_item.dart';

class QiitaApiService {
  QiitaApiService._();

  static final instance = QiitaApiService._();

  final _baseUrl = 'https://qiita.com/api/v2/items';
  final _dio = Dio();

  /// ユーザリスト取得
  Future<List<QiitaItem>> qiitaItems({
    int page = 1,
    int perPage = 20,
  }) async {
    final queryParameters = {
      'page': page,
      'per_page': perPage,
    };

    final qiitaToken = dotenv.env['QIITA_TOKEN'].toString();
    final options = Options(
      headers: {"Authorization": "Bearer $qiitaToken"},
    );
    debugPrint('request queryParameters : ' + queryParameters.toString());
    debugPrint('request options : ' + options.headers.toString());

    try {
      final _response = await _dio.get(
        _baseUrl,
        queryParameters: queryParameters,
        options: options,
      );
      debugPrint('response data : ' + _response.statusMessage.toString());
      if (_response.statusCode == 200) {
        final List qiitaItems = _response.data;
        final result =
            qiitaItems.map((json) => QiitaItem.fromJson(json)).toList();
        return result;
      } else {
        debugPrint('response data : []');
        return [];
      }
    } catch (e) {
      debugPrint('response data error: ' + e.toString());
      return [];
    }
  }
}
