// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState<$T>()';
}


}

/// @nodoc
class $ProductsStateCopyWith<T,$Res>  {
$ProductsStateCopyWith(ProductsState<T> _, $Res Function(ProductsState<T>) __);
}


/// Adds pattern-matching-related methods to [ProductsState].
extension ProductsStatePatterns<T> on ProductsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( Loading<T> value)?  productsLoading,TResult Function( ProductsSuccess<T> value)?  productsSuccess,TResult Function( ProductsFailure<T> value)?  productsFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when productsLoading != null:
return productsLoading(_that);case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that);case ProductsFailure() when productsFailure != null:
return productsFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( Loading<T> value)  productsLoading,required TResult Function( ProductsSuccess<T> value)  productsSuccess,required TResult Function( ProductsFailure<T> value)  productsFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return productsLoading(_that);case ProductsSuccess():
return productsSuccess(_that);case ProductsFailure():
return productsFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( Loading<T> value)?  productsLoading,TResult? Function( ProductsSuccess<T> value)?  productsSuccess,TResult? Function( ProductsFailure<T> value)?  productsFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when productsLoading != null:
return productsLoading(_that);case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that);case ProductsFailure() when productsFailure != null:
return productsFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  productsLoading,TResult Function( ProductsResponse data)?  productsSuccess,TResult Function( ApiErrorModel apiErrorModel)?  productsFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when productsLoading != null:
return productsLoading();case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that.data);case ProductsFailure() when productsFailure != null:
return productsFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  productsLoading,required TResult Function( ProductsResponse data)  productsSuccess,required TResult Function( ApiErrorModel apiErrorModel)  productsFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return productsLoading();case ProductsSuccess():
return productsSuccess(_that.data);case ProductsFailure():
return productsFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  productsLoading,TResult? Function( ProductsResponse data)?  productsSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  productsFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when productsLoading != null:
return productsLoading();case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that.data);case ProductsFailure() when productsFailure != null:
return productsFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements ProductsState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState<$T>.initial()';
}


}




/// @nodoc


class Loading<T> implements ProductsState<T> {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState<$T>.productsLoading()';
}


}




/// @nodoc


class ProductsSuccess<T> implements ProductsState<T> {
  const ProductsSuccess(this.data);
  

 final  ProductsResponse data;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsSuccessCopyWith<T, ProductsSuccess<T>> get copyWith => _$ProductsSuccessCopyWithImpl<T, ProductsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSuccess<T>&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProductsState<$T>.productsSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductsSuccessCopyWith<T,$Res> implements $ProductsStateCopyWith<T, $Res> {
  factory $ProductsSuccessCopyWith(ProductsSuccess<T> value, $Res Function(ProductsSuccess<T>) _then) = _$ProductsSuccessCopyWithImpl;
@useResult
$Res call({
 ProductsResponse data
});




}
/// @nodoc
class _$ProductsSuccessCopyWithImpl<T,$Res>
    implements $ProductsSuccessCopyWith<T, $Res> {
  _$ProductsSuccessCopyWithImpl(this._self, this._then);

  final ProductsSuccess<T> _self;
  final $Res Function(ProductsSuccess<T>) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ProductsSuccess<T>(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProductsResponse,
  ));
}


}

/// @nodoc


class ProductsFailure<T> implements ProductsState<T> {
  const ProductsFailure(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsFailureCopyWith<T, ProductsFailure<T>> get copyWith => _$ProductsFailureCopyWithImpl<T, ProductsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsFailure<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'ProductsState<$T>.productsFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $ProductsFailureCopyWith<T,$Res> implements $ProductsStateCopyWith<T, $Res> {
  factory $ProductsFailureCopyWith(ProductsFailure<T> value, $Res Function(ProductsFailure<T>) _then) = _$ProductsFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$ProductsFailureCopyWithImpl<T,$Res>
    implements $ProductsFailureCopyWith<T, $Res> {
  _$ProductsFailureCopyWithImpl(this._self, this._then);

  final ProductsFailure<T> _self;
  final $Res Function(ProductsFailure<T>) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(ProductsFailure<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
