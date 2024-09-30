// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() chatLoading,
    required TResult Function(T data) chatSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) chatError,
    required TResult Function() updateMassages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? chatLoading,
    TResult? Function(T data)? chatSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? chatError,
    TResult? Function()? updateMassages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? chatLoading,
    TResult Function(T data)? chatSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? chatError,
    TResult Function()? updateMassages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChatLoading<T> value) chatLoading,
    required TResult Function(ChatSuccess<T> value) chatSuccess,
    required TResult Function(ChatError<T> value) chatError,
    required TResult Function(UpdateMassages<T> value) updateMassages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChatLoading<T> value)? chatLoading,
    TResult? Function(ChatSuccess<T> value)? chatSuccess,
    TResult? Function(ChatError<T> value)? chatError,
    TResult? Function(UpdateMassages<T> value)? updateMassages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChatLoading<T> value)? chatLoading,
    TResult Function(ChatSuccess<T> value)? chatSuccess,
    TResult Function(ChatError<T> value)? chatError,
    TResult Function(UpdateMassages<T> value)? updateMassages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<T, $Res> {
  factory $ChatStateCopyWith(
          ChatState<T> value, $Res Function(ChatState<T>) then) =
      _$ChatStateCopyWithImpl<T, $Res, ChatState<T>>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<T, $Res, $Val extends ChatState<T>>
    implements $ChatStateCopyWith<T, $Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

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
    extends _$ChatStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'ChatState<$T>.initial()';
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
    required TResult Function() chatLoading,
    required TResult Function(T data) chatSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) chatError,
    required TResult Function() updateMassages,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? chatLoading,
    TResult? Function(T data)? chatSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? chatError,
    TResult? Function()? updateMassages,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? chatLoading,
    TResult Function(T data)? chatSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? chatError,
    TResult Function()? updateMassages,
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
    required TResult Function(ChatLoading<T> value) chatLoading,
    required TResult Function(ChatSuccess<T> value) chatSuccess,
    required TResult Function(ChatError<T> value) chatError,
    required TResult Function(UpdateMassages<T> value) updateMassages,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChatLoading<T> value)? chatLoading,
    TResult? Function(ChatSuccess<T> value)? chatSuccess,
    TResult? Function(ChatError<T> value)? chatError,
    TResult? Function(UpdateMassages<T> value)? updateMassages,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChatLoading<T> value)? chatLoading,
    TResult Function(ChatSuccess<T> value)? chatSuccess,
    TResult Function(ChatError<T> value)? chatError,
    TResult Function(UpdateMassages<T> value)? updateMassages,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ChatState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ChatLoadingImplCopyWith<T, $Res> {
  factory _$$ChatLoadingImplCopyWith(_$ChatLoadingImpl<T> value,
          $Res Function(_$ChatLoadingImpl<T>) then) =
      __$$ChatLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ChatLoadingImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$ChatLoadingImpl<T>>
    implements _$$ChatLoadingImplCopyWith<T, $Res> {
  __$$ChatLoadingImplCopyWithImpl(
      _$ChatLoadingImpl<T> _value, $Res Function(_$ChatLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatLoadingImpl<T> implements ChatLoading<T> {
  const _$ChatLoadingImpl();

  @override
  String toString() {
    return 'ChatState<$T>.chatLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() chatLoading,
    required TResult Function(T data) chatSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) chatError,
    required TResult Function() updateMassages,
  }) {
    return chatLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? chatLoading,
    TResult? Function(T data)? chatSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? chatError,
    TResult? Function()? updateMassages,
  }) {
    return chatLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? chatLoading,
    TResult Function(T data)? chatSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? chatError,
    TResult Function()? updateMassages,
    required TResult orElse(),
  }) {
    if (chatLoading != null) {
      return chatLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChatLoading<T> value) chatLoading,
    required TResult Function(ChatSuccess<T> value) chatSuccess,
    required TResult Function(ChatError<T> value) chatError,
    required TResult Function(UpdateMassages<T> value) updateMassages,
  }) {
    return chatLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChatLoading<T> value)? chatLoading,
    TResult? Function(ChatSuccess<T> value)? chatSuccess,
    TResult? Function(ChatError<T> value)? chatError,
    TResult? Function(UpdateMassages<T> value)? updateMassages,
  }) {
    return chatLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChatLoading<T> value)? chatLoading,
    TResult Function(ChatSuccess<T> value)? chatSuccess,
    TResult Function(ChatError<T> value)? chatError,
    TResult Function(UpdateMassages<T> value)? updateMassages,
    required TResult orElse(),
  }) {
    if (chatLoading != null) {
      return chatLoading(this);
    }
    return orElse();
  }
}

abstract class ChatLoading<T> implements ChatState<T> {
  const factory ChatLoading() = _$ChatLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ChatSuccessImplCopyWith<T, $Res> {
  factory _$$ChatSuccessImplCopyWith(_$ChatSuccessImpl<T> value,
          $Res Function(_$ChatSuccessImpl<T>) then) =
      __$$ChatSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ChatSuccessImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$ChatSuccessImpl<T>>
    implements _$$ChatSuccessImplCopyWith<T, $Res> {
  __$$ChatSuccessImplCopyWithImpl(
      _$ChatSuccessImpl<T> _value, $Res Function(_$ChatSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChatSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ChatSuccessImpl<T> implements ChatSuccess<T> {
  const _$ChatSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ChatState<$T>.chatSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSuccessImplCopyWith<T, _$ChatSuccessImpl<T>> get copyWith =>
      __$$ChatSuccessImplCopyWithImpl<T, _$ChatSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() chatLoading,
    required TResult Function(T data) chatSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) chatError,
    required TResult Function() updateMassages,
  }) {
    return chatSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? chatLoading,
    TResult? Function(T data)? chatSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? chatError,
    TResult? Function()? updateMassages,
  }) {
    return chatSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? chatLoading,
    TResult Function(T data)? chatSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? chatError,
    TResult Function()? updateMassages,
    required TResult orElse(),
  }) {
    if (chatSuccess != null) {
      return chatSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChatLoading<T> value) chatLoading,
    required TResult Function(ChatSuccess<T> value) chatSuccess,
    required TResult Function(ChatError<T> value) chatError,
    required TResult Function(UpdateMassages<T> value) updateMassages,
  }) {
    return chatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChatLoading<T> value)? chatLoading,
    TResult? Function(ChatSuccess<T> value)? chatSuccess,
    TResult? Function(ChatError<T> value)? chatError,
    TResult? Function(UpdateMassages<T> value)? updateMassages,
  }) {
    return chatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChatLoading<T> value)? chatLoading,
    TResult Function(ChatSuccess<T> value)? chatSuccess,
    TResult Function(ChatError<T> value)? chatError,
    TResult Function(UpdateMassages<T> value)? updateMassages,
    required TResult orElse(),
  }) {
    if (chatSuccess != null) {
      return chatSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatSuccess<T> implements ChatState<T> {
  const factory ChatSuccess(final T data) = _$ChatSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ChatSuccessImplCopyWith<T, _$ChatSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatErrorImplCopyWith<T, $Res> {
  factory _$$ChatErrorImplCopyWith(
          _$ChatErrorImpl<T> value, $Res Function(_$ChatErrorImpl<T>) then) =
      __$$ChatErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ChatErrorImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$ChatErrorImpl<T>>
    implements _$$ChatErrorImplCopyWith<T, $Res> {
  __$$ChatErrorImplCopyWithImpl(
      _$ChatErrorImpl<T> _value, $Res Function(_$ChatErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ChatErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ChatErrorImpl<T> implements ChatError<T> {
  const _$ChatErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'ChatState<$T>.chatError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatErrorImplCopyWith<T, _$ChatErrorImpl<T>> get copyWith =>
      __$$ChatErrorImplCopyWithImpl<T, _$ChatErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() chatLoading,
    required TResult Function(T data) chatSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) chatError,
    required TResult Function() updateMassages,
  }) {
    return chatError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? chatLoading,
    TResult? Function(T data)? chatSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? chatError,
    TResult? Function()? updateMassages,
  }) {
    return chatError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? chatLoading,
    TResult Function(T data)? chatSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? chatError,
    TResult Function()? updateMassages,
    required TResult orElse(),
  }) {
    if (chatError != null) {
      return chatError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChatLoading<T> value) chatLoading,
    required TResult Function(ChatSuccess<T> value) chatSuccess,
    required TResult Function(ChatError<T> value) chatError,
    required TResult Function(UpdateMassages<T> value) updateMassages,
  }) {
    return chatError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChatLoading<T> value)? chatLoading,
    TResult? Function(ChatSuccess<T> value)? chatSuccess,
    TResult? Function(ChatError<T> value)? chatError,
    TResult? Function(UpdateMassages<T> value)? updateMassages,
  }) {
    return chatError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChatLoading<T> value)? chatLoading,
    TResult Function(ChatSuccess<T> value)? chatSuccess,
    TResult Function(ChatError<T> value)? chatError,
    TResult Function(UpdateMassages<T> value)? updateMassages,
    required TResult orElse(),
  }) {
    if (chatError != null) {
      return chatError(this);
    }
    return orElse();
  }
}

abstract class ChatError<T> implements ChatState<T> {
  const factory ChatError(final ApiErrorModel apiErrorModel) =
      _$ChatErrorImpl<T>;

  ApiErrorModel get apiErrorModel;
  @JsonKey(ignore: true)
  _$$ChatErrorImplCopyWith<T, _$ChatErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMassagesImplCopyWith<T, $Res> {
  factory _$$UpdateMassagesImplCopyWith(_$UpdateMassagesImpl<T> value,
          $Res Function(_$UpdateMassagesImpl<T>) then) =
      __$$UpdateMassagesImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UpdateMassagesImplCopyWithImpl<T, $Res>
    extends _$ChatStateCopyWithImpl<T, $Res, _$UpdateMassagesImpl<T>>
    implements _$$UpdateMassagesImplCopyWith<T, $Res> {
  __$$UpdateMassagesImplCopyWithImpl(_$UpdateMassagesImpl<T> _value,
      $Res Function(_$UpdateMassagesImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateMassagesImpl<T> implements UpdateMassages<T> {
  const _$UpdateMassagesImpl();

  @override
  String toString() {
    return 'ChatState<$T>.updateMassages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateMassagesImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() chatLoading,
    required TResult Function(T data) chatSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) chatError,
    required TResult Function() updateMassages,
  }) {
    return updateMassages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? chatLoading,
    TResult? Function(T data)? chatSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? chatError,
    TResult? Function()? updateMassages,
  }) {
    return updateMassages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? chatLoading,
    TResult Function(T data)? chatSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? chatError,
    TResult Function()? updateMassages,
    required TResult orElse(),
  }) {
    if (updateMassages != null) {
      return updateMassages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChatLoading<T> value) chatLoading,
    required TResult Function(ChatSuccess<T> value) chatSuccess,
    required TResult Function(ChatError<T> value) chatError,
    required TResult Function(UpdateMassages<T> value) updateMassages,
  }) {
    return updateMassages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChatLoading<T> value)? chatLoading,
    TResult? Function(ChatSuccess<T> value)? chatSuccess,
    TResult? Function(ChatError<T> value)? chatError,
    TResult? Function(UpdateMassages<T> value)? updateMassages,
  }) {
    return updateMassages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChatLoading<T> value)? chatLoading,
    TResult Function(ChatSuccess<T> value)? chatSuccess,
    TResult Function(ChatError<T> value)? chatError,
    TResult Function(UpdateMassages<T> value)? updateMassages,
    required TResult orElse(),
  }) {
    if (updateMassages != null) {
      return updateMassages(this);
    }
    return orElse();
  }
}

abstract class UpdateMassages<T> implements ChatState<T> {
  const factory UpdateMassages() = _$UpdateMassagesImpl<T>;
}
