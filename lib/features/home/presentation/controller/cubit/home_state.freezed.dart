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
    required TResult Function(Catergories categories) success,
    required TResult Function(String error) error,
    required TResult Function() doctorLoading,
    required TResult Function(Catergories categories) doctorSuccess,
    required TResult Function(String error) doctorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Catergories categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? doctorLoading,
    TResult? Function(Catergories categories)? doctorSuccess,
    TResult? Function(String error)? doctorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Catergories categories)? success,
    TResult Function(String error)? error,
    TResult Function()? doctorLoading,
    TResult Function(Catergories categories)? doctorSuccess,
    TResult Function(String error)? doctorError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(DoctorLoading<T> value) doctorLoading,
    required TResult Function(DoctorSuccess<T> value) doctorSuccess,
    required TResult Function(DoctorError<T> value) doctorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(DoctorLoading<T> value)? doctorLoading,
    TResult? Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult? Function(DoctorError<T> value)? doctorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(DoctorLoading<T> value)? doctorLoading,
    TResult Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult Function(DoctorError<T> value)? doctorError,
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

class _$InitialImpl<T> with DiagnosticableTreeMixin implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState<$T>.initial'));
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
    required TResult Function(Catergories categories) success,
    required TResult Function(String error) error,
    required TResult Function() doctorLoading,
    required TResult Function(Catergories categories) doctorSuccess,
    required TResult Function(String error) doctorError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Catergories categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? doctorLoading,
    TResult? Function(Catergories categories)? doctorSuccess,
    TResult? Function(String error)? doctorError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Catergories categories)? success,
    TResult Function(String error)? error,
    TResult Function()? doctorLoading,
    TResult Function(Catergories categories)? doctorSuccess,
    TResult Function(String error)? doctorError,
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
    required TResult Function(DoctorLoading<T> value) doctorLoading,
    required TResult Function(DoctorSuccess<T> value) doctorSuccess,
    required TResult Function(DoctorError<T> value) doctorError,
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
    TResult? Function(DoctorLoading<T> value)? doctorLoading,
    TResult? Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult? Function(DoctorError<T> value)? doctorError,
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
    TResult Function(DoctorLoading<T> value)? doctorLoading,
    TResult Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult Function(DoctorError<T> value)? doctorError,
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

class _$LoadingImpl<T> with DiagnosticableTreeMixin implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState<$T>.loading'));
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
    required TResult Function(Catergories categories) success,
    required TResult Function(String error) error,
    required TResult Function() doctorLoading,
    required TResult Function(Catergories categories) doctorSuccess,
    required TResult Function(String error) doctorError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Catergories categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? doctorLoading,
    TResult? Function(Catergories categories)? doctorSuccess,
    TResult? Function(String error)? doctorError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Catergories categories)? success,
    TResult Function(String error)? error,
    TResult Function()? doctorLoading,
    TResult Function(Catergories categories)? doctorSuccess,
    TResult Function(String error)? doctorError,
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
    required TResult Function(DoctorLoading<T> value) doctorLoading,
    required TResult Function(DoctorSuccess<T> value) doctorSuccess,
    required TResult Function(DoctorError<T> value) doctorError,
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
    TResult? Function(DoctorLoading<T> value)? doctorLoading,
    TResult? Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult? Function(DoctorError<T> value)? doctorError,
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
    TResult Function(DoctorLoading<T> value)? doctorLoading,
    TResult Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult Function(DoctorError<T> value)? doctorError,
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
  $Res call({Catergories categories});
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
    Object? categories = null,
  }) {
    return _then(_$SuccessImpl<T>(
      null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Catergories,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> with DiagnosticableTreeMixin implements Success<T> {
  const _$SuccessImpl(this.categories);

  @override
  final Catergories categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.success(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState<$T>.success'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categories);

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
    required TResult Function(Catergories categories) success,
    required TResult Function(String error) error,
    required TResult Function() doctorLoading,
    required TResult Function(Catergories categories) doctorSuccess,
    required TResult Function(String error) doctorError,
  }) {
    return success(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Catergories categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? doctorLoading,
    TResult? Function(Catergories categories)? doctorSuccess,
    TResult? Function(String error)? doctorError,
  }) {
    return success?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Catergories categories)? success,
    TResult Function(String error)? error,
    TResult Function()? doctorLoading,
    TResult Function(Catergories categories)? doctorSuccess,
    TResult Function(String error)? doctorError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categories);
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
    required TResult Function(DoctorLoading<T> value) doctorLoading,
    required TResult Function(DoctorSuccess<T> value) doctorSuccess,
    required TResult Function(DoctorError<T> value) doctorError,
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
    TResult? Function(DoctorLoading<T> value)? doctorLoading,
    TResult? Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult? Function(DoctorError<T> value)? doctorError,
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
    TResult Function(DoctorLoading<T> value)? doctorLoading,
    TResult Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult Function(DoctorError<T> value)? doctorError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements HomeState<T> {
  const factory Success(final Catergories categories) = _$SuccessImpl<T>;

  Catergories get categories;
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
  $Res call({String error});
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
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> with DiagnosticableTreeMixin implements Error<T> {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState<$T>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

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
    required TResult Function(Catergories categories) success,
    required TResult Function(String error) error,
    required TResult Function() doctorLoading,
    required TResult Function(Catergories categories) doctorSuccess,
    required TResult Function(String error) doctorError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Catergories categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? doctorLoading,
    TResult? Function(Catergories categories)? doctorSuccess,
    TResult? Function(String error)? doctorError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Catergories categories)? success,
    TResult Function(String error)? error,
    TResult Function()? doctorLoading,
    TResult Function(Catergories categories)? doctorSuccess,
    TResult Function(String error)? doctorError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
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
    required TResult Function(DoctorLoading<T> value) doctorLoading,
    required TResult Function(DoctorSuccess<T> value) doctorSuccess,
    required TResult Function(DoctorError<T> value) doctorError,
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
    TResult? Function(DoctorLoading<T> value)? doctorLoading,
    TResult? Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult? Function(DoctorError<T> value)? doctorError,
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
    TResult Function(DoctorLoading<T> value)? doctorLoading,
    TResult Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult Function(DoctorError<T> value)? doctorError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements HomeState<T> {
  const factory Error({required final String error}) = _$ErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorLoadingImplCopyWith<T, $Res> {
  factory _$$DoctorLoadingImplCopyWith(_$DoctorLoadingImpl<T> value,
          $Res Function(_$DoctorLoadingImpl<T>) then) =
      __$$DoctorLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DoctorLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$DoctorLoadingImpl<T>>
    implements _$$DoctorLoadingImplCopyWith<T, $Res> {
  __$$DoctorLoadingImplCopyWithImpl(_$DoctorLoadingImpl<T> _value,
      $Res Function(_$DoctorLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoctorLoadingImpl<T>
    with DiagnosticableTreeMixin
    implements DoctorLoading<T> {
  const _$DoctorLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.doctorLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeState<$T>.doctorLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoctorLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Catergories categories) success,
    required TResult Function(String error) error,
    required TResult Function() doctorLoading,
    required TResult Function(Catergories categories) doctorSuccess,
    required TResult Function(String error) doctorError,
  }) {
    return doctorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Catergories categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? doctorLoading,
    TResult? Function(Catergories categories)? doctorSuccess,
    TResult? Function(String error)? doctorError,
  }) {
    return doctorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Catergories categories)? success,
    TResult Function(String error)? error,
    TResult Function()? doctorLoading,
    TResult Function(Catergories categories)? doctorSuccess,
    TResult Function(String error)? doctorError,
    required TResult orElse(),
  }) {
    if (doctorLoading != null) {
      return doctorLoading();
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
    required TResult Function(DoctorLoading<T> value) doctorLoading,
    required TResult Function(DoctorSuccess<T> value) doctorSuccess,
    required TResult Function(DoctorError<T> value) doctorError,
  }) {
    return doctorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(DoctorLoading<T> value)? doctorLoading,
    TResult? Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult? Function(DoctorError<T> value)? doctorError,
  }) {
    return doctorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(DoctorLoading<T> value)? doctorLoading,
    TResult Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult Function(DoctorError<T> value)? doctorError,
    required TResult orElse(),
  }) {
    if (doctorLoading != null) {
      return doctorLoading(this);
    }
    return orElse();
  }
}

abstract class DoctorLoading<T> implements HomeState<T> {
  const factory DoctorLoading() = _$DoctorLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DoctorSuccessImplCopyWith<T, $Res> {
  factory _$$DoctorSuccessImplCopyWith(_$DoctorSuccessImpl<T> value,
          $Res Function(_$DoctorSuccessImpl<T>) then) =
      __$$DoctorSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Catergories categories});
}

/// @nodoc
class __$$DoctorSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$DoctorSuccessImpl<T>>
    implements _$$DoctorSuccessImplCopyWith<T, $Res> {
  __$$DoctorSuccessImplCopyWithImpl(_$DoctorSuccessImpl<T> _value,
      $Res Function(_$DoctorSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$DoctorSuccessImpl<T>(
      null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Catergories,
    ));
  }
}

/// @nodoc

class _$DoctorSuccessImpl<T>
    with DiagnosticableTreeMixin
    implements DoctorSuccess<T> {
  const _$DoctorSuccessImpl(this.categories);

  @override
  final Catergories categories;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.doctorSuccess(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState<$T>.doctorSuccess'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorSuccessImpl<T> &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorSuccessImplCopyWith<T, _$DoctorSuccessImpl<T>> get copyWith =>
      __$$DoctorSuccessImplCopyWithImpl<T, _$DoctorSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Catergories categories) success,
    required TResult Function(String error) error,
    required TResult Function() doctorLoading,
    required TResult Function(Catergories categories) doctorSuccess,
    required TResult Function(String error) doctorError,
  }) {
    return doctorSuccess(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Catergories categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? doctorLoading,
    TResult? Function(Catergories categories)? doctorSuccess,
    TResult? Function(String error)? doctorError,
  }) {
    return doctorSuccess?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Catergories categories)? success,
    TResult Function(String error)? error,
    TResult Function()? doctorLoading,
    TResult Function(Catergories categories)? doctorSuccess,
    TResult Function(String error)? doctorError,
    required TResult orElse(),
  }) {
    if (doctorSuccess != null) {
      return doctorSuccess(categories);
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
    required TResult Function(DoctorLoading<T> value) doctorLoading,
    required TResult Function(DoctorSuccess<T> value) doctorSuccess,
    required TResult Function(DoctorError<T> value) doctorError,
  }) {
    return doctorSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(DoctorLoading<T> value)? doctorLoading,
    TResult? Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult? Function(DoctorError<T> value)? doctorError,
  }) {
    return doctorSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(DoctorLoading<T> value)? doctorLoading,
    TResult Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult Function(DoctorError<T> value)? doctorError,
    required TResult orElse(),
  }) {
    if (doctorSuccess != null) {
      return doctorSuccess(this);
    }
    return orElse();
  }
}

abstract class DoctorSuccess<T> implements HomeState<T> {
  const factory DoctorSuccess(final Catergories categories) =
      _$DoctorSuccessImpl<T>;

  Catergories get categories;
  @JsonKey(ignore: true)
  _$$DoctorSuccessImplCopyWith<T, _$DoctorSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorErrorImplCopyWith<T, $Res> {
  factory _$$DoctorErrorImplCopyWith(_$DoctorErrorImpl<T> value,
          $Res Function(_$DoctorErrorImpl<T>) then) =
      __$$DoctorErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DoctorErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$DoctorErrorImpl<T>>
    implements _$$DoctorErrorImplCopyWith<T, $Res> {
  __$$DoctorErrorImplCopyWithImpl(
      _$DoctorErrorImpl<T> _value, $Res Function(_$DoctorErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DoctorErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoctorErrorImpl<T>
    with DiagnosticableTreeMixin
    implements DoctorError<T> {
  const _$DoctorErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState<$T>.doctorError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState<$T>.doctorError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorErrorImplCopyWith<T, _$DoctorErrorImpl<T>> get copyWith =>
      __$$DoctorErrorImplCopyWithImpl<T, _$DoctorErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Catergories categories) success,
    required TResult Function(String error) error,
    required TResult Function() doctorLoading,
    required TResult Function(Catergories categories) doctorSuccess,
    required TResult Function(String error) doctorError,
  }) {
    return doctorError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Catergories categories)? success,
    TResult? Function(String error)? error,
    TResult? Function()? doctorLoading,
    TResult? Function(Catergories categories)? doctorSuccess,
    TResult? Function(String error)? doctorError,
  }) {
    return doctorError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Catergories categories)? success,
    TResult Function(String error)? error,
    TResult Function()? doctorLoading,
    TResult Function(Catergories categories)? doctorSuccess,
    TResult Function(String error)? doctorError,
    required TResult orElse(),
  }) {
    if (doctorError != null) {
      return doctorError(this.error);
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
    required TResult Function(DoctorLoading<T> value) doctorLoading,
    required TResult Function(DoctorSuccess<T> value) doctorSuccess,
    required TResult Function(DoctorError<T> value) doctorError,
  }) {
    return doctorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(DoctorLoading<T> value)? doctorLoading,
    TResult? Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult? Function(DoctorError<T> value)? doctorError,
  }) {
    return doctorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(DoctorLoading<T> value)? doctorLoading,
    TResult Function(DoctorSuccess<T> value)? doctorSuccess,
    TResult Function(DoctorError<T> value)? doctorError,
    required TResult orElse(),
  }) {
    if (doctorError != null) {
      return doctorError(this);
    }
    return orElse();
  }
}

abstract class DoctorError<T> implements HomeState<T> {
  const factory DoctorError({required final String error}) =
      _$DoctorErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$DoctorErrorImplCopyWith<T, _$DoctorErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
