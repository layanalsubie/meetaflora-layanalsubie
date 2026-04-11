// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plant_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlantInfoModel {

 String get plantName; String get description; String get careTips; String get funFact;
/// Create a copy of PlantInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlantInfoModelCopyWith<PlantInfoModel> get copyWith => _$PlantInfoModelCopyWithImpl<PlantInfoModel>(this as PlantInfoModel, _$identity);

  /// Serializes this PlantInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlantInfoModel&&(identical(other.plantName, plantName) || other.plantName == plantName)&&(identical(other.description, description) || other.description == description)&&(identical(other.careTips, careTips) || other.careTips == careTips)&&(identical(other.funFact, funFact) || other.funFact == funFact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plantName,description,careTips,funFact);

@override
String toString() {
  return 'PlantInfoModel(plantName: $plantName, description: $description, careTips: $careTips, funFact: $funFact)';
}


}

/// @nodoc
abstract mixin class $PlantInfoModelCopyWith<$Res>  {
  factory $PlantInfoModelCopyWith(PlantInfoModel value, $Res Function(PlantInfoModel) _then) = _$PlantInfoModelCopyWithImpl;
@useResult
$Res call({
 String plantName, String description, String careTips, String funFact
});




}
/// @nodoc
class _$PlantInfoModelCopyWithImpl<$Res>
    implements $PlantInfoModelCopyWith<$Res> {
  _$PlantInfoModelCopyWithImpl(this._self, this._then);

  final PlantInfoModel _self;
  final $Res Function(PlantInfoModel) _then;

/// Create a copy of PlantInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? plantName = null,Object? description = null,Object? careTips = null,Object? funFact = null,}) {
  return _then(_self.copyWith(
plantName: null == plantName ? _self.plantName : plantName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,careTips: null == careTips ? _self.careTips : careTips // ignore: cast_nullable_to_non_nullable
as String,funFact: null == funFact ? _self.funFact : funFact // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PlantInfoModel].
extension PlantInfoModelPatterns on PlantInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlantInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlantInfoModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlantInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _PlantInfoModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlantInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlantInfoModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String plantName,  String description,  String careTips,  String funFact)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlantInfoModel() when $default != null:
return $default(_that.plantName,_that.description,_that.careTips,_that.funFact);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String plantName,  String description,  String careTips,  String funFact)  $default,) {final _that = this;
switch (_that) {
case _PlantInfoModel():
return $default(_that.plantName,_that.description,_that.careTips,_that.funFact);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String plantName,  String description,  String careTips,  String funFact)?  $default,) {final _that = this;
switch (_that) {
case _PlantInfoModel() when $default != null:
return $default(_that.plantName,_that.description,_that.careTips,_that.funFact);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlantInfoModel implements PlantInfoModel {
  const _PlantInfoModel({required this.plantName, required this.description, required this.careTips, required this.funFact});
  factory _PlantInfoModel.fromJson(Map<String, dynamic> json) => _$PlantInfoModelFromJson(json);

@override final  String plantName;
@override final  String description;
@override final  String careTips;
@override final  String funFact;

/// Create a copy of PlantInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlantInfoModelCopyWith<_PlantInfoModel> get copyWith => __$PlantInfoModelCopyWithImpl<_PlantInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlantInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlantInfoModel&&(identical(other.plantName, plantName) || other.plantName == plantName)&&(identical(other.description, description) || other.description == description)&&(identical(other.careTips, careTips) || other.careTips == careTips)&&(identical(other.funFact, funFact) || other.funFact == funFact));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,plantName,description,careTips,funFact);

@override
String toString() {
  return 'PlantInfoModel(plantName: $plantName, description: $description, careTips: $careTips, funFact: $funFact)';
}


}

/// @nodoc
abstract mixin class _$PlantInfoModelCopyWith<$Res> implements $PlantInfoModelCopyWith<$Res> {
  factory _$PlantInfoModelCopyWith(_PlantInfoModel value, $Res Function(_PlantInfoModel) _then) = __$PlantInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String plantName, String description, String careTips, String funFact
});




}
/// @nodoc
class __$PlantInfoModelCopyWithImpl<$Res>
    implements _$PlantInfoModelCopyWith<$Res> {
  __$PlantInfoModelCopyWithImpl(this._self, this._then);

  final _PlantInfoModel _self;
  final $Res Function(_PlantInfoModel) _then;

/// Create a copy of PlantInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? plantName = null,Object? description = null,Object? careTips = null,Object? funFact = null,}) {
  return _then(_PlantInfoModel(
plantName: null == plantName ? _self.plantName : plantName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,careTips: null == careTips ? _self.careTips : careTips // ignore: cast_nullable_to_non_nullable
as String,funFact: null == funFact ? _self.funFact : funFact // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
