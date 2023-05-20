import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keys_manager/support/failure.dart';

part 'result_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.data(T data) = Data<T>;

  const factory ResultState.error(Failure error) = Error<T>;
}
