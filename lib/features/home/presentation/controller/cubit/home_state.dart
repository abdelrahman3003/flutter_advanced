import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/doctor.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  //homedataState
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(Category? category) = Success;
  const factory HomeState.error({required String error}) = Error;
}
