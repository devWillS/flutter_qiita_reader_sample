import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_user.freezed.dart';
part 'qiita_user.g.dart';

@freezed
abstract class QiitaUser with _$QiitaUser {
  const factory QiitaUser({
    required String profile_image_url,
  }) = _QiitaUser;

  factory QiitaUser.fromJson(Map<String, dynamic> json) =>
      _$QiitaUserFromJson(json);
}
