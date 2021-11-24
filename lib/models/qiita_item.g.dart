// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QiitaItem _$$_QiitaItemFromJson(Map<String, dynamic> json) => _$_QiitaItem(
      title: json['title'] as String,
      body: json['body'] as String,
      url: json['url'] as String,
      user: QiitaUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QiitaItemToJson(_$_QiitaItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'url': instance.url,
      'user': instance.user,
    };
