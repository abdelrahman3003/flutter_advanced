// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor?>? doctorList) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function() connectivityConnected,
    required TResult Function() connectivityDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor?>? doctorList)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function()? connectivityConnected,
    TResult? Function()? connectivityDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor?>? doctorList)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function()? connectivityConnected,
    TResult Function()? connectivityDisconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(ConnectivityConnected<T> value)
        connectivityConnected,
    required TResult Function(ConnectivityDisconnected<T> value)
        connectivityDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult? Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor?>? doctorList) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function() connectivityConnected,
    required TResult Function() connectivityDisconnected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor?>? doctorList)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function()? connectivityConnected,
    TResult? Function()? connectivityDisconnected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor?>? doctorList)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function()? connectivityConnected,
    TResult Function()? connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(ConnectivityConnected<T> value)
        connectivityConnected,
    required TResult Function(ConnectivityDisconnected<T> value)
        connectivityDisconnected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult? Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor?>? doctorList) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function() connectivityConnected,
    required TResult Function() connectivityDisconnected,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor?>? doctorList)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function()? connectivityConnected,
    TResult? Function()? connectivityDisconnected,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor?>? doctorList)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function()? connectivityConnected,
    TResult Function()? connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(ConnectivityConnected<T> value)
        connectivityConnected,
    required TResult Function(ConnectivityDisconnected<T> value)
        connectivityDisconnected,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult? Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements HomeState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<Doctor?>? doctorList});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorList = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      freezed == doctorList
          ? _value._doctorList
          : doctorList // ignore: cast_nullable_to_non_nullable
              as List<Doctor?>?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements Success<T> {
  const _$SuccessImpl(final List<Doctor?>? doctorList)
      : _doctorList = doctorList;

  final List<Doctor?>? _doctorList;
  @override
  List<Doctor?>? get doctorList {
    final value = _doctorList;
    if (value == null) return null;
    if (_doctorList is EqualUnmodifiableListView) return _doctorList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState<$T>.success(doctorList: $doctorList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._doctorList, _doctorList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_doctorList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor?>? doctorList) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function() connectivityConnected,
    required TResult Function() connectivityDisconnected,
  }) {
    return success(doctorList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor?>? doctorList)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function()? connectivityConnected,
    TResult? Function()? connectivityDisconnected,
  }) {
    return success?.call(doctorList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor?>? doctorList)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function()? connectivityConnected,
    TResult Function()? connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(doctorList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(ConnectivityConnected<T> value)
        connectivityConnected,
    required TResult Function(ConnectivityDisconnected<T> value)
        connectivityDisconnected,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult? Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements HomeState<T> {
  const factory Success(final List<Doctor?>? doctorList) = _$SuccessImpl<T>;

  List<Doctor?>? get doctorList;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'HomeState<$T>.error(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor?>? doctorList) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function() connectivityConnected,
    required TResult Function() connectivityDisconnected,
  }) {
    return error(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor?>? doctorList)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function()? connectivityConnected,
    TResult? Function()? connectivityDisconnected,
  }) {
    return error?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor?>? doctorList)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function()? connectivityConnected,
    TResult Function()? connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(ConnectivityConnected<T> value)
        connectivityConnected,
    required TResult Function(ConnectivityDisconnected<T> value)
        connectivityDisconnected,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult? Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements HomeState<T> {
  const factory Error(final ApiErrorModel apiErrorModel) = _$ErrorImpl<T>;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectivityConnectedImplCopyWith<T, $Res> {
  factory _$$ConnectivityConnectedImplCopyWith(
          _$ConnectivityConnectedImpl<T> value,
          $Res Function(_$ConnectivityConnectedImpl<T>) then) =
      __$$ConnectivityConnectedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ConnectivityConnectedImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ConnectivityConnectedImpl<T>>
    implements _$$ConnectivityConnectedImplCopyWith<T, $Res> {
  __$$ConnectivityConnectedImplCopyWithImpl(
      _$ConnectivityConnectedImpl<T> _value,
      $Res Function(_$ConnectivityConnectedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectivityConnectedImpl<T> implements ConnectivityConnected<T> {
  const _$ConnectivityConnectedImpl();

  @override
  String toString() {
    return 'HomeState<$T>.connectivityConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityConnectedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor?>? doctorList) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function() connectivityConnected,
    required TResult Function() connectivityDisconnected,
  }) {
    return connectivityConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor?>? doctorList)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function()? connectivityConnected,
    TResult? Function()? connectivityDisconnected,
  }) {
    return connectivityConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor?>? doctorList)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function()? connectivityConnected,
    TResult Function()? connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (connectivityConnected != null) {
      return connectivityConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(ConnectivityConnected<T> value)
        connectivityConnected,
    required TResult Function(ConnectivityDisconnected<T> value)
        connectivityDisconnected,
  }) {
    return connectivityConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult? Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
  }) {
    return connectivityConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (connectivityConnected != null) {
      return connectivityConnected(this);
    }
    return orElse();
  }
}

abstract class ConnectivityConnected<T> implements HomeState<T> {
  const factory ConnectivityConnected() = _$ConnectivityConnectedImpl<T>;
}

/// @nodoc
abstract class _$$ConnectivityDisconnectedImplCopyWith<T, $Res> {
  factory _$$ConnectivityDisconnectedImplCopyWith(
          _$ConnectivityDisconnectedImpl<T> value,
          $Res Function(_$ConnectivityDisconnectedImpl<T>) then) =
      __$$ConnectivityDisconnectedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ConnectivityDisconnectedImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$ConnectivityDisconnectedImpl<T>>
    implements _$$ConnectivityDisconnectedImplCopyWith<T, $Res> {
  __$$ConnectivityDisconnectedImplCopyWithImpl(
      _$ConnectivityDisconnectedImpl<T> _value,
      $Res Function(_$ConnectivityDisconnectedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectivityDisconnectedImpl<T> implements ConnectivityDisconnected<T> {
  const _$ConnectivityDisconnectedImpl();

  @override
  String toString() {
    return 'HomeState<$T>.connectivityDisconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityDisconnectedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor?>? doctorList) success,
    required TResult Function(ApiErrorModel apiErrorModel) error,
    required TResult Function() connectivityConnected,
    required TResult Function() connectivityDisconnected,
  }) {
    return connectivityDisconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor?>? doctorList)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? error,
    TResult? Function()? connectivityConnected,
    TResult? Function()? connectivityDisconnected,
  }) {
    return connectivityDisconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor?>? doctorList)? success,
    TResult Function(ApiErrorModel apiErrorModel)? error,
    TResult Function()? connectivityConnected,
    TResult Function()? connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (connectivityDisconnected != null) {
      return connectivityDisconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(ConnectivityConnected<T> value)
        connectivityConnected,
    required TResult Function(ConnectivityDisconnected<T> value)
        connectivityDisconnected,
  }) {
    return connectivityDisconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult? Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
  }) {
    return connectivityDisconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(ConnectivityConnected<T> value)? connectivityConnected,
    TResult Function(ConnectivityDisconnected<T> value)?
        connectivityDisconnected,
    required TResult orElse(),
  }) {
    if (connectivityDisconnected != null) {
      return connectivityDisconnected(this);
    }
    return orElse();
  }
}

abstract class ConnectivityDisconnected<T> implements HomeState<T> {
  const factory ConnectivityDisconnected() = _$ConnectivityDisconnectedImpl<T>;
}
