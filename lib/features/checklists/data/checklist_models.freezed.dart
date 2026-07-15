// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistPageDto {

 int? get totalCount; List<ChecklistItemDto>? get data;
/// Create a copy of ChecklistPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistPageDtoCopyWith<ChecklistPageDto> get copyWith => _$ChecklistPageDtoCopyWithImpl<ChecklistPageDto>(this as ChecklistPageDto, _$identity);

  /// Serializes this ChecklistPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistPageDto&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ChecklistPageDto(totalCount: $totalCount, data: $data)';
}


}

/// @nodoc
abstract mixin class $ChecklistPageDtoCopyWith<$Res>  {
  factory $ChecklistPageDtoCopyWith(ChecklistPageDto value, $Res Function(ChecklistPageDto) _then) = _$ChecklistPageDtoCopyWithImpl;
@useResult
$Res call({
 int? totalCount, List<ChecklistItemDto>? data
});




}
/// @nodoc
class _$ChecklistPageDtoCopyWithImpl<$Res>
    implements $ChecklistPageDtoCopyWith<$Res> {
  _$ChecklistPageDtoCopyWithImpl(this._self, this._then);

  final ChecklistPageDto _self;
  final $Res Function(ChecklistPageDto) _then;

/// Create a copy of ChecklistPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ChecklistItemDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistPageDto].
extension ChecklistPageDtoPatterns on ChecklistPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistPageDto value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? totalCount,  List<ChecklistItemDto>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistPageDto() when $default != null:
return $default(_that.totalCount,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? totalCount,  List<ChecklistItemDto>? data)  $default,) {final _that = this;
switch (_that) {
case _ChecklistPageDto():
return $default(_that.totalCount,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? totalCount,  List<ChecklistItemDto>? data)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistPageDto() when $default != null:
return $default(_that.totalCount,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistPageDto implements ChecklistPageDto {
  const _ChecklistPageDto({this.totalCount, final  List<ChecklistItemDto>? data}): _data = data;
  factory _ChecklistPageDto.fromJson(Map<String, dynamic> json) => _$ChecklistPageDtoFromJson(json);

@override final  int? totalCount;
 final  List<ChecklistItemDto>? _data;
@override List<ChecklistItemDto>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ChecklistPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistPageDtoCopyWith<_ChecklistPageDto> get copyWith => __$ChecklistPageDtoCopyWithImpl<_ChecklistPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistPageDto&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ChecklistPageDto(totalCount: $totalCount, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ChecklistPageDtoCopyWith<$Res> implements $ChecklistPageDtoCopyWith<$Res> {
  factory _$ChecklistPageDtoCopyWith(_ChecklistPageDto value, $Res Function(_ChecklistPageDto) _then) = __$ChecklistPageDtoCopyWithImpl;
@override @useResult
$Res call({
 int? totalCount, List<ChecklistItemDto>? data
});




}
/// @nodoc
class __$ChecklistPageDtoCopyWithImpl<$Res>
    implements _$ChecklistPageDtoCopyWith<$Res> {
  __$ChecklistPageDtoCopyWithImpl(this._self, this._then);

  final _ChecklistPageDto _self;
  final $Res Function(_ChecklistPageDto) _then;

/// Create a copy of ChecklistPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = freezed,Object? data = freezed,}) {
  return _then(_ChecklistPageDto(
totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ChecklistItemDto>?,
  ));
}


}


/// @nodoc
mixin _$ChecklistItemDto {

 String? get id; String? get name; String? get checklistcategoryName; String? get appgroupName;
/// Create a copy of ChecklistItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistItemDtoCopyWith<ChecklistItemDto> get copyWith => _$ChecklistItemDtoCopyWithImpl<ChecklistItemDto>(this as ChecklistItemDto, _$identity);

  /// Serializes this ChecklistItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.checklistcategoryName, checklistcategoryName) || other.checklistcategoryName == checklistcategoryName)&&(identical(other.appgroupName, appgroupName) || other.appgroupName == appgroupName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,checklistcategoryName,appgroupName);

@override
String toString() {
  return 'ChecklistItemDto(id: $id, name: $name, checklistcategoryName: $checklistcategoryName, appgroupName: $appgroupName)';
}


}

/// @nodoc
abstract mixin class $ChecklistItemDtoCopyWith<$Res>  {
  factory $ChecklistItemDtoCopyWith(ChecklistItemDto value, $Res Function(ChecklistItemDto) _then) = _$ChecklistItemDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? checklistcategoryName, String? appgroupName
});




}
/// @nodoc
class _$ChecklistItemDtoCopyWithImpl<$Res>
    implements $ChecklistItemDtoCopyWith<$Res> {
  _$ChecklistItemDtoCopyWithImpl(this._self, this._then);

  final ChecklistItemDto _self;
  final $Res Function(ChecklistItemDto) _then;

/// Create a copy of ChecklistItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? checklistcategoryName = freezed,Object? appgroupName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,checklistcategoryName: freezed == checklistcategoryName ? _self.checklistcategoryName : checklistcategoryName // ignore: cast_nullable_to_non_nullable
as String?,appgroupName: freezed == appgroupName ? _self.appgroupName : appgroupName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistItemDto].
extension ChecklistItemDtoPatterns on ChecklistItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistItemDto value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? checklistcategoryName,  String? appgroupName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistItemDto() when $default != null:
return $default(_that.id,_that.name,_that.checklistcategoryName,_that.appgroupName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? checklistcategoryName,  String? appgroupName)  $default,) {final _that = this;
switch (_that) {
case _ChecklistItemDto():
return $default(_that.id,_that.name,_that.checklistcategoryName,_that.appgroupName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? checklistcategoryName,  String? appgroupName)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistItemDto() when $default != null:
return $default(_that.id,_that.name,_that.checklistcategoryName,_that.appgroupName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistItemDto implements ChecklistItemDto {
  const _ChecklistItemDto({this.id, this.name, this.checklistcategoryName, this.appgroupName});
  factory _ChecklistItemDto.fromJson(Map<String, dynamic> json) => _$ChecklistItemDtoFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? checklistcategoryName;
@override final  String? appgroupName;

/// Create a copy of ChecklistItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistItemDtoCopyWith<_ChecklistItemDto> get copyWith => __$ChecklistItemDtoCopyWithImpl<_ChecklistItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.checklistcategoryName, checklistcategoryName) || other.checklistcategoryName == checklistcategoryName)&&(identical(other.appgroupName, appgroupName) || other.appgroupName == appgroupName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,checklistcategoryName,appgroupName);

@override
String toString() {
  return 'ChecklistItemDto(id: $id, name: $name, checklistcategoryName: $checklistcategoryName, appgroupName: $appgroupName)';
}


}

/// @nodoc
abstract mixin class _$ChecklistItemDtoCopyWith<$Res> implements $ChecklistItemDtoCopyWith<$Res> {
  factory _$ChecklistItemDtoCopyWith(_ChecklistItemDto value, $Res Function(_ChecklistItemDto) _then) = __$ChecklistItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? checklistcategoryName, String? appgroupName
});




}
/// @nodoc
class __$ChecklistItemDtoCopyWithImpl<$Res>
    implements _$ChecklistItemDtoCopyWith<$Res> {
  __$ChecklistItemDtoCopyWithImpl(this._self, this._then);

  final _ChecklistItemDto _self;
  final $Res Function(_ChecklistItemDto) _then;

/// Create a copy of ChecklistItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? checklistcategoryName = freezed,Object? appgroupName = freezed,}) {
  return _then(_ChecklistItemDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,checklistcategoryName: freezed == checklistcategoryName ? _self.checklistcategoryName : checklistcategoryName // ignore: cast_nullable_to_non_nullable
as String?,appgroupName: freezed == appgroupName ? _self.appgroupName : appgroupName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChecklistDetailsDto {

 String? get id; String? get name; String? get checklistcategoryName; String? get appgroupName; String? get dateCreated; String? get lastUpdated; String? get fforwardbody;
/// Create a copy of ChecklistDetailsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistDetailsDtoCopyWith<ChecklistDetailsDto> get copyWith => _$ChecklistDetailsDtoCopyWithImpl<ChecklistDetailsDto>(this as ChecklistDetailsDto, _$identity);

  /// Serializes this ChecklistDetailsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistDetailsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.checklistcategoryName, checklistcategoryName) || other.checklistcategoryName == checklistcategoryName)&&(identical(other.appgroupName, appgroupName) || other.appgroupName == appgroupName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.fforwardbody, fforwardbody) || other.fforwardbody == fforwardbody));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,checklistcategoryName,appgroupName,dateCreated,lastUpdated,fforwardbody);

@override
String toString() {
  return 'ChecklistDetailsDto(id: $id, name: $name, checklistcategoryName: $checklistcategoryName, appgroupName: $appgroupName, dateCreated: $dateCreated, lastUpdated: $lastUpdated, fforwardbody: $fforwardbody)';
}


}

/// @nodoc
abstract mixin class $ChecklistDetailsDtoCopyWith<$Res>  {
  factory $ChecklistDetailsDtoCopyWith(ChecklistDetailsDto value, $Res Function(ChecklistDetailsDto) _then) = _$ChecklistDetailsDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? checklistcategoryName, String? appgroupName, String? dateCreated, String? lastUpdated, String? fforwardbody
});




}
/// @nodoc
class _$ChecklistDetailsDtoCopyWithImpl<$Res>
    implements $ChecklistDetailsDtoCopyWith<$Res> {
  _$ChecklistDetailsDtoCopyWithImpl(this._self, this._then);

  final ChecklistDetailsDto _self;
  final $Res Function(ChecklistDetailsDto) _then;

/// Create a copy of ChecklistDetailsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? checklistcategoryName = freezed,Object? appgroupName = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? fforwardbody = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,checklistcategoryName: freezed == checklistcategoryName ? _self.checklistcategoryName : checklistcategoryName // ignore: cast_nullable_to_non_nullable
as String?,appgroupName: freezed == appgroupName ? _self.appgroupName : appgroupName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,fforwardbody: freezed == fforwardbody ? _self.fforwardbody : fforwardbody // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistDetailsDto].
extension ChecklistDetailsDtoPatterns on ChecklistDetailsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistDetailsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistDetailsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistDetailsDto value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistDetailsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistDetailsDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistDetailsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? checklistcategoryName,  String? appgroupName,  String? dateCreated,  String? lastUpdated,  String? fforwardbody)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistDetailsDto() when $default != null:
return $default(_that.id,_that.name,_that.checklistcategoryName,_that.appgroupName,_that.dateCreated,_that.lastUpdated,_that.fforwardbody);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? checklistcategoryName,  String? appgroupName,  String? dateCreated,  String? lastUpdated,  String? fforwardbody)  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetailsDto():
return $default(_that.id,_that.name,_that.checklistcategoryName,_that.appgroupName,_that.dateCreated,_that.lastUpdated,_that.fforwardbody);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? checklistcategoryName,  String? appgroupName,  String? dateCreated,  String? lastUpdated,  String? fforwardbody)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetailsDto() when $default != null:
return $default(_that.id,_that.name,_that.checklistcategoryName,_that.appgroupName,_that.dateCreated,_that.lastUpdated,_that.fforwardbody);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistDetailsDto implements ChecklistDetailsDto {
  const _ChecklistDetailsDto({this.id, this.name, this.checklistcategoryName, this.appgroupName, this.dateCreated, this.lastUpdated, this.fforwardbody});
  factory _ChecklistDetailsDto.fromJson(Map<String, dynamic> json) => _$ChecklistDetailsDtoFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? checklistcategoryName;
@override final  String? appgroupName;
@override final  String? dateCreated;
@override final  String? lastUpdated;
@override final  String? fforwardbody;

/// Create a copy of ChecklistDetailsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistDetailsDtoCopyWith<_ChecklistDetailsDto> get copyWith => __$ChecklistDetailsDtoCopyWithImpl<_ChecklistDetailsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistDetailsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistDetailsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.checklistcategoryName, checklistcategoryName) || other.checklistcategoryName == checklistcategoryName)&&(identical(other.appgroupName, appgroupName) || other.appgroupName == appgroupName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.fforwardbody, fforwardbody) || other.fforwardbody == fforwardbody));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,checklistcategoryName,appgroupName,dateCreated,lastUpdated,fforwardbody);

@override
String toString() {
  return 'ChecklistDetailsDto(id: $id, name: $name, checklistcategoryName: $checklistcategoryName, appgroupName: $appgroupName, dateCreated: $dateCreated, lastUpdated: $lastUpdated, fforwardbody: $fforwardbody)';
}


}

/// @nodoc
abstract mixin class _$ChecklistDetailsDtoCopyWith<$Res> implements $ChecklistDetailsDtoCopyWith<$Res> {
  factory _$ChecklistDetailsDtoCopyWith(_ChecklistDetailsDto value, $Res Function(_ChecklistDetailsDto) _then) = __$ChecklistDetailsDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? checklistcategoryName, String? appgroupName, String? dateCreated, String? lastUpdated, String? fforwardbody
});




}
/// @nodoc
class __$ChecklistDetailsDtoCopyWithImpl<$Res>
    implements _$ChecklistDetailsDtoCopyWith<$Res> {
  __$ChecklistDetailsDtoCopyWithImpl(this._self, this._then);

  final _ChecklistDetailsDto _self;
  final $Res Function(_ChecklistDetailsDto) _then;

/// Create a copy of ChecklistDetailsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? checklistcategoryName = freezed,Object? appgroupName = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? fforwardbody = freezed,}) {
  return _then(_ChecklistDetailsDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,checklistcategoryName: freezed == checklistcategoryName ? _self.checklistcategoryName : checklistcategoryName // ignore: cast_nullable_to_non_nullable
as String?,appgroupName: freezed == appgroupName ? _self.appgroupName : appgroupName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,fforwardbody: freezed == fforwardbody ? _self.fforwardbody : fforwardbody // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
