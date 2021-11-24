// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qiita_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QiitaItem _$QiitaItemFromJson(Map<String, dynamic> json) {
  return _QiitaItem.fromJson(json);
}

/// @nodoc
class _$QiitaItemTearOff {
  const _$QiitaItemTearOff();

  _QiitaItem call(
      {required String title,
      required String body,
      required String url,
      required QiitaUser user}) {
    return _QiitaItem(
      title: title,
      body: body,
      url: url,
      user: user,
    );
  }

  QiitaItem fromJson(Map<String, Object?> json) {
    return QiitaItem.fromJson(json);
  }
}

/// @nodoc
const $QiitaItem = _$QiitaItemTearOff();

/// @nodoc
mixin _$QiitaItem {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  QiitaUser get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QiitaItemCopyWith<QiitaItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaItemCopyWith<$Res> {
  factory $QiitaItemCopyWith(QiitaItem value, $Res Function(QiitaItem) then) =
      _$QiitaItemCopyWithImpl<$Res>;
  $Res call({String title, String body, String url, QiitaUser user});

  $QiitaUserCopyWith<$Res> get user;
}

/// @nodoc
class _$QiitaItemCopyWithImpl<$Res> implements $QiitaItemCopyWith<$Res> {
  _$QiitaItemCopyWithImpl(this._value, this._then);

  final QiitaItem _value;
  // ignore: unused_field
  final $Res Function(QiitaItem) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? url = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QiitaUser,
    ));
  }

  @override
  $QiitaUserCopyWith<$Res> get user {
    return $QiitaUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$QiitaItemCopyWith<$Res> implements $QiitaItemCopyWith<$Res> {
  factory _$QiitaItemCopyWith(
          _QiitaItem value, $Res Function(_QiitaItem) then) =
      __$QiitaItemCopyWithImpl<$Res>;
  @override
  $Res call({String title, String body, String url, QiitaUser user});

  @override
  $QiitaUserCopyWith<$Res> get user;
}

/// @nodoc
class __$QiitaItemCopyWithImpl<$Res> extends _$QiitaItemCopyWithImpl<$Res>
    implements _$QiitaItemCopyWith<$Res> {
  __$QiitaItemCopyWithImpl(_QiitaItem _value, $Res Function(_QiitaItem) _then)
      : super(_value, (v) => _then(v as _QiitaItem));

  @override
  _QiitaItem get _value => super._value as _QiitaItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? url = freezed,
    Object? user = freezed,
  }) {
    return _then(_QiitaItem(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as QiitaUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QiitaItem implements _QiitaItem {
  const _$_QiitaItem(
      {required this.title,
      required this.body,
      required this.url,
      required this.user});

  factory _$_QiitaItem.fromJson(Map<String, dynamic> json) =>
      _$$_QiitaItemFromJson(json);

  @override
  final String title;
  @override
  final String body;
  @override
  final String url;
  @override
  final QiitaUser user;

  @override
  String toString() {
    return 'QiitaItem(title: $title, body: $body, url: $url, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QiitaItem &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, body, url, user);

  @JsonKey(ignore: true)
  @override
  _$QiitaItemCopyWith<_QiitaItem> get copyWith =>
      __$QiitaItemCopyWithImpl<_QiitaItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QiitaItemToJson(this);
  }
}

abstract class _QiitaItem implements QiitaItem {
  const factory _QiitaItem(
      {required String title,
      required String body,
      required String url,
      required QiitaUser user}) = _$_QiitaItem;

  factory _QiitaItem.fromJson(Map<String, dynamic> json) =
      _$_QiitaItem.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override
  String get url;
  @override
  QiitaUser get user;
  @override
  @JsonKey(ignore: true)
  _$QiitaItemCopyWith<_QiitaItem> get copyWith =>
      throw _privateConstructorUsedError;
}
