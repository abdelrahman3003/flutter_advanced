import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(Catergories categories) = Success;
  const factory HomeState.error({required String error}) = Error;
}
