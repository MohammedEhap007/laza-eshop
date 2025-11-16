// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResendOtpState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResendOtpState<$T>()';
}


}

/// @nodoc
class $ResendOtpStateCopyWith<T,$Res>  {
$ResendOtpStateCopyWith(ResendOtpState<T> _, $Res Function(ResendOtpState<T>) __);
}


/// Adds pattern-matching-related methods to [ResendOtpState].
extension ResendOtpStatePatterns<T> on ResendOtpState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( ResendOtpLoading<T> value)?  resendOtpLoading,TResult Function( ResendOtpSuccess<T> value)?  resendOtpSuccess,TResult Function( ResendOtpFailure<T> value)?  resendOtpFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ResendOtpLoading() when resendOtpLoading != null:
return resendOtpLoading(_that);case ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that);case ResendOtpFailure() when resendOtpFailure != null:
return resendOtpFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( ResendOtpLoading<T> value)  resendOtpLoading,required TResult Function( ResendOtpSuccess<T> value)  resendOtpSuccess,required TResult Function( ResendOtpFailure<T> value)  resendOtpFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ResendOtpLoading():
return resendOtpLoading(_that);case ResendOtpSuccess():
return resendOtpSuccess(_that);case ResendOtpFailure():
return resendOtpFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( ResendOtpLoading<T> value)?  resendOtpLoading,TResult? Function( ResendOtpSuccess<T> value)?  resendOtpSuccess,TResult? Function( ResendOtpFailure<T> value)?  resendOtpFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ResendOtpLoading() when resendOtpLoading != null:
return resendOtpLoading(_that);case ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that);case ResendOtpFailure() when resendOtpFailure != null:
return resendOtpFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  resendOtpLoading,TResult Function( ResendOtpResponse data)?  resendOtpSuccess,TResult Function( ApiErrorModel apiErrorModel)?  resendOtpFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ResendOtpLoading() when resendOtpLoading != null:
return resendOtpLoading();case ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that.data);case ResendOtpFailure() when resendOtpFailure != null:
return resendOtpFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  resendOtpLoading,required TResult Function( ResendOtpResponse data)  resendOtpSuccess,required TResult Function( ApiErrorModel apiErrorModel)  resendOtpFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ResendOtpLoading():
return resendOtpLoading();case ResendOtpSuccess():
return resendOtpSuccess(_that.data);case ResendOtpFailure():
return resendOtpFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  resendOtpLoading,TResult? Function( ResendOtpResponse data)?  resendOtpSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  resendOtpFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ResendOtpLoading() when resendOtpLoading != null:
return resendOtpLoading();case ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that.data);case ResendOtpFailure() when resendOtpFailure != null:
return resendOtpFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements ResendOtpState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResendOtpState<$T>.initial()';
}


}




/// @nodoc


class ResendOtpLoading<T> implements ResendOtpState<T> {
  const ResendOtpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResendOtpState<$T>.resendOtpLoading()';
}


}




/// @nodoc


class ResendOtpSuccess<T> implements ResendOtpState<T> {
  const ResendOtpSuccess(this.data);
  

 final  ResendOtpResponse data;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendOtpSuccessCopyWith<T, ResendOtpSuccess<T>> get copyWith => _$ResendOtpSuccessCopyWithImpl<T, ResendOtpSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpSuccess<T>&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ResendOtpState<$T>.resendOtpSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ResendOtpSuccessCopyWith<T,$Res> implements $ResendOtpStateCopyWith<T, $Res> {
  factory $ResendOtpSuccessCopyWith(ResendOtpSuccess<T> value, $Res Function(ResendOtpSuccess<T>) _then) = _$ResendOtpSuccessCopyWithImpl;
@useResult
$Res call({
 ResendOtpResponse data
});




}
/// @nodoc
class _$ResendOtpSuccessCopyWithImpl<T,$Res>
    implements $ResendOtpSuccessCopyWith<T, $Res> {
  _$ResendOtpSuccessCopyWithImpl(this._self, this._then);

  final ResendOtpSuccess<T> _self;
  final $Res Function(ResendOtpSuccess<T>) _then;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ResendOtpSuccess<T>(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ResendOtpResponse,
  ));
}


}

/// @nodoc


class ResendOtpFailure<T> implements ResendOtpState<T> {
  const ResendOtpFailure(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendOtpFailureCopyWith<T, ResendOtpFailure<T>> get copyWith => _$ResendOtpFailureCopyWithImpl<T, ResendOtpFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpFailure<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'ResendOtpState<$T>.resendOtpFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $ResendOtpFailureCopyWith<T,$Res> implements $ResendOtpStateCopyWith<T, $Res> {
  factory $ResendOtpFailureCopyWith(ResendOtpFailure<T> value, $Res Function(ResendOtpFailure<T>) _then) = _$ResendOtpFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$ResendOtpFailureCopyWithImpl<T,$Res>
    implements $ResendOtpFailureCopyWith<T, $Res> {
  _$ResendOtpFailureCopyWithImpl(this._self, this._then);

  final ResendOtpFailure<T> _self;
  final $Res Function(ResendOtpFailure<T>) _then;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(ResendOtpFailure<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
