import 'package:flutter_qiita_reader_sample/models/qiita_item.dart';
import 'package:flutter_qiita_reader_sample/services/qiita_api_service.dart';

class QiitaItemsRepository {
  QiitaItemsRepository._();

  static final instance = QiitaItemsRepository._();

  Future<List<QiitaItem>> qiitaItems(int page) async {
    return await QiitaApiService.instance.qiitaItems(page: page);
  }
}
