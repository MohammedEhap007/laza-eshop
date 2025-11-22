// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoriesState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesState<$T>()';
}


}

/// @nodoc
class $CategoriesStateCopyWith<T,$Res>  {
$CategoriesStateCopyWith(CategoriesState<T> _, $Res Function(CategoriesState<T>) __);
}


/// Adds pattern-matching-related methods to [CategoriesState].
extension CategoriesStatePatterns<T> on CategoriesState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( CategoriesLoading<T> value)?  categoriesLoading,TResult Function( CategoriesSuccess<T> value)?  categoriesSuccess,TResult Function( CategoriesFailure<T> value)?  categoriesFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading(_that);case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that);case CategoriesFailure() when categoriesFailure != null:
return categoriesFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( CategoriesLoading<T> value)  categoriesLoading,required TResult Function( CategoriesSuccess<T> value)  categoriesSuccess,required TResult Function( CategoriesFailure<T> value)  categoriesFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case CategoriesLoading():
return categoriesLoading(_that);case CategoriesSuccess():
return categoriesSuccess(_that);case CategoriesFailure():
return categoriesFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( CategoriesLoading<T> value)?  categoriesLoading,TResult? Function( CategoriesSuccess<T> value)?  categoriesSuccess,TResult? Function( CategoriesFailure<T> value)?  categoriesFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading(_that);case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that);case CategoriesFailure() when categoriesFailure != null:
return categoriesFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  categoriesLoading,TResult Function( CategoriesResponse data)?  categoriesSuccess,TResult Function( ApiErrorModel apiErrorModel)?  categoriesFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading();case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that.data);case CategoriesFailure() when categoriesFailure != null:
return categoriesFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  categoriesLoading,required TResult Function( CategoriesResponse data)  categoriesSuccess,required TResult Function( ApiErrorModel apiErrorModel)  categoriesFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case CategoriesLoading():
return categoriesLoading();case CategoriesSuccess():
return categoriesSuccess(_that.data);case CategoriesFailure():
return categoriesFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  categoriesLoading,TResult? Function( CategoriesResponse data)?  categoriesSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  categoriesFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading();case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that.data);case CategoriesFailure() when categoriesFailure != null:
return categoriesFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements CategoriesState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesState<$T>.initial()';
}


}




/// @nodoc


class CategoriesLoading<T> implements CategoriesState<T> {
  const CategoriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoriesState<$T>.categoriesLoading()';
}


}




/// @nodoc


class CategoriesSuccess<T> implements CategoriesState<T> {
  const CategoriesSuccess(this.data);
  

 final  CategoriesResponse data;

/// Create a copy of CategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesSuccessCopyWith<T, CategoriesSuccess<T>> get copyWith => _$CategoriesSuccessCopyWithImpl<T, CategoriesSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesSuccess<T>&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CategoriesState<$T>.categoriesSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $CategoriesSuccessCopyWith<T,$Res> implements $CategoriesStateCopyWith<T, $Res> {
  factory $CategoriesSuccessCopyWith(CategoriesSuccess<T> value, $Res Function(CategoriesSuccess<T>) _then) = _$CategoriesSuccessCopyWithImpl;
@useResult
$Res call({
 CategoriesResponse data
});




}
/// @nodoc
class _$CategoriesSuccessCopyWithImpl<T,$Res>
    implements $CategoriesSuccessCopyWith<T, $Res> {
  _$CategoriesSuccessCopyWithImpl(this._self, this._then);

  final CategoriesSuccess<T> _self;
  final $Res Function(CategoriesSuccess<T>) _then;

/// Create a copy of CategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(CategoriesSuccess<T>(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoriesResponse,
  ));
}


}

/// @nodoc


class CategoriesFailure<T> implements CategoriesState<T> {
  const CategoriesFailure(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of CategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesFailureCopyWith<T, CategoriesFailure<T>> get copyWith => _$CategoriesFailureCopyWithImpl<T, CategoriesFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesFailure<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'CategoriesState<$T>.categoriesFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $CategoriesFailureCopyWith<T,$Res> implements $CategoriesStateCopyWith<T, $Res> {
  factory $CategoriesFailureCopyWith(CategoriesFailure<T> value, $Res Function(CategoriesFailure<T>) _then) = _$CategoriesFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$CategoriesFailureCopyWithImpl<T,$Res>
    implements $CategoriesFailureCopyWith<T, $Res> {
  _$CategoriesFailureCopyWithImpl(this._self, this._then);

  final CategoriesFailure<T> _self;
  final $Res Function(CategoriesFailure<T>) _then;

/// Create a copy of CategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(CategoriesFailure<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
