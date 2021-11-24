import 'package:flutter_qiita_reader_sample/models/qiita_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_item.freezed.dart';
part 'qiita_item.g.dart';

@freezed
abstract class QiitaItem with _$QiitaItem {
  const factory QiitaItem({
    required String title,
    required String body,
    required String url,
    required QiitaUser user,
  }) = _QiitaItem;

  factory QiitaItem.fromJson(Map<String, dynamic> json) =>
      _$QiitaItemFromJson(json);
}
