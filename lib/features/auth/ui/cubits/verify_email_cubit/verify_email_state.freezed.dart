// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyEmailState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState<$T>()';
}


}

/// @nodoc
class $VerifyEmailStateCopyWith<T,$Res>  {
$VerifyEmailStateCopyWith(VerifyEmailState<T> _, $Res Function(VerifyEmailState<T>) __);
}


/// Adds pattern-matching-related methods to [VerifyEmailState].
extension VerifyEmailStatePatterns<T> on VerifyEmailState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( VerifyEmailLoading<T> value)?  loading,TResult Function( VerifyEmailSuccess<T> value)?  success,TResult Function( VerifyEmailFailure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case VerifyEmailLoading() when loading != null:
return loading(_that);case VerifyEmailSuccess() when success != null:
return success(_that);case VerifyEmailFailure() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( VerifyEmailLoading<T> value)  loading,required TResult Function( VerifyEmailSuccess<T> value)  success,required TResult Function( VerifyEmailFailure<T> value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case VerifyEmailLoading():
return loading(_that);case VerifyEmailSuccess():
return success(_that);case VerifyEmailFailure():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( VerifyEmailLoading<T> value)?  loading,TResult? Function( VerifyEmailSuccess<T> value)?  success,TResult? Function( VerifyEmailFailure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case VerifyEmailLoading() when loading != null:
return loading(_that);case VerifyEmailSuccess() when success != null:
return success(_that);case VerifyEmailFailure() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( VerifyEmailResponse data)?  success,TResult Function( ApiErrorModel apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case VerifyEmailLoading() when loading != null:
return loading();case VerifyEmailSuccess() when success != null:
return success(_that.data);case VerifyEmailFailure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( VerifyEmailResponse data)  success,required TResult Function( ApiErrorModel apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case VerifyEmailLoading():
return loading();case VerifyEmailSuccess():
return success(_that.data);case VerifyEmailFailure():
return failure(_that.apiErrorModel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( VerifyEmailResponse data)?  success,TResult? Function( ApiErrorModel apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case VerifyEmailLoading() when loading != null:
return loading();case VerifyEmailSuccess() when success != null:
return success(_that.data);case VerifyEmailFailure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements VerifyEmailState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState<$T>.initial()';
}


}




/// @nodoc


class VerifyEmailLoading<T> implements VerifyEmailState<T> {
  const VerifyEmailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState<$T>.loading()';
}


}




/// @nodoc


class VerifyEmailSuccess<T> implements VerifyEmailState<T> {
  const VerifyEmailSuccess(this.data);
  

 final  VerifyEmailResponse data;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyEmailSuccessCopyWith<T, VerifyEmailSuccess<T>> get copyWith => _$VerifyEmailSuccessCopyWithImpl<T, VerifyEmailSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailSuccess<T>&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'VerifyEmailState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $VerifyEmailSuccessCopyWith<T,$Res> implements $VerifyEmailStateCopyWith<T, $Res> {
  factory $VerifyEmailSuccessCopyWith(VerifyEmailSuccess<T> value, $Res Function(VerifyEmailSuccess<T>) _then) = _$VerifyEmailSuccessCopyWithImpl;
@useResult
$Res call({
 VerifyEmailResponse data
});




}
/// @nodoc
class _$VerifyEmailSuccessCopyWithImpl<T,$Res>
    implements $VerifyEmailSuccessCopyWith<T, $Res> {
  _$VerifyEmailSuccessCopyWithImpl(this._self, this._then);

  final VerifyEmailSuccess<T> _self;
  final $Res Function(VerifyEmailSuccess<T>) _then;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(VerifyEmailSuccess<T>(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyEmailResponse,
  ));
}


}

/// @nodoc


class VerifyEmailFailure<T> implements VerifyEmailState<T> {
  const VerifyEmailFailure(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyEmailFailureCopyWith<T, VerifyEmailFailure<T>> get copyWith => _$VerifyEmailFailureCopyWithImpl<T, VerifyEmailFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailFailure<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'VerifyEmailState<$T>.failure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $VerifyEmailFailureCopyWith<T,$Res> implements $VerifyEmailStateCopyWith<T, $Res> {
  factory $VerifyEmailFailureCopyWith(VerifyEmailFailure<T> value, $Res Function(VerifyEmailFailure<T>) _then) = _$VerifyEmailFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$VerifyEmailFailureCopyWithImpl<T,$Res>
    implements $VerifyEmailFailureCopyWith<T, $Res> {
  _$VerifyEmailFailureCopyWithImpl(this._self, this._then);

  final VerifyEmailFailure<T> _self;
  final $Res Function(VerifyEmailFailure<T>) _then;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(VerifyEmailFailure<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
