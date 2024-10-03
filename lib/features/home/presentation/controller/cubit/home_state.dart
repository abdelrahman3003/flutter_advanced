import 'package:clinic_system/core/network/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/doctor.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  //homedataState
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(List<Doctor?>? doctorList) = Success;
  const factory HomeState.error(ApiErrorModel apiErrorModel) = Error;
  const factory HomeState.connectivityConnected() = ConnectivityConnected;
  const factory HomeState.connectivityDisconnected() = ConnectivityDisconnected;
}
