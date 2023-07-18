import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloadaps.freezed.dart';
part 'downloadaps.g.dart';

@freezed
class downloadapis with _$downloadapis {
  const factory downloadapis({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _downloadapis;

  factory downloadapis.fromJson(Map<String, dynamic> json) =>
      _$downloadapisFromJson(json);
}
