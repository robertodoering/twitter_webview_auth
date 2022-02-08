import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitter_auth_result.freezed.dart';

@freezed
class TwitterAuthResult with _$TwitterAuthResult {
  const factory TwitterAuthResult.success({
    required String token,
    required String secret,
    required String userId,
  }) = _Success;

  const factory TwitterAuthResult.failure([
    dynamic error,
    StackTrace? stackTrace,
  ]) = _Failure;

  const factory TwitterAuthResult.cancelled() = _Cancelled;
}
