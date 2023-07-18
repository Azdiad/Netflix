import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainFailures.freezed.dart';

@freezed
class mainFailures with _$mainFailures {
  const factory mainFailures.clientfailure() = _Clientfailure;
  const factory mainFailures.serverfailure() = _Serverfailure;
}
