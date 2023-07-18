// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloadaps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

downloadapis _$downloadapisFromJson(Map<String, dynamic> json) {
  return _downloadapis.fromJson(json);
}

/// @nodoc
mixin _$downloadapis {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $downloadapisCopyWith<downloadapis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $downloadapisCopyWith<$Res> {
  factory $downloadapisCopyWith(
          downloadapis value, $Res Function(downloadapis) then) =
      _$downloadapisCopyWithImpl<$Res, downloadapis>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$downloadapisCopyWithImpl<$Res, $Val extends downloadapis>
    implements $downloadapisCopyWith<$Res> {
  _$downloadapisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_downloadapisCopyWith<$Res>
    implements $downloadapisCopyWith<$Res> {
  factory _$$_downloadapisCopyWith(
          _$_downloadapis value, $Res Function(_$_downloadapis) then) =
      __$$_downloadapisCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$_downloadapisCopyWithImpl<$Res>
    extends _$downloadapisCopyWithImpl<$Res, _$_downloadapis>
    implements _$$_downloadapisCopyWith<$Res> {
  __$$_downloadapisCopyWithImpl(
      _$_downloadapis _value, $Res Function(_$_downloadapis) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$_downloadapis(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_downloadapis implements _downloadapis {
  const _$_downloadapis(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_downloadapis.fromJson(Map<String, dynamic> json) =>
      _$$_downloadapisFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'downloadapis(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_downloadapis &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_downloadapisCopyWith<_$_downloadapis> get copyWith =>
      __$$_downloadapisCopyWithImpl<_$_downloadapis>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_downloadapisToJson(
      this,
    );
  }
}

abstract class _downloadapis implements downloadapis {
  const factory _downloadapis(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$_downloadapis;

  factory _downloadapis.fromJson(Map<String, dynamic> json) =
      _$_downloadapis.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_downloadapisCopyWith<_$_downloadapis> get copyWith =>
      throw _privateConstructorUsedError;
}
