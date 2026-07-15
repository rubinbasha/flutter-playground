// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChecklistSummary {

 String get id; String get name; String? get categoryName; String? get appGroupName;
/// Create a copy of ChecklistSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistSummaryCopyWith<ChecklistSummary> get copyWith => _$ChecklistSummaryCopyWithImpl<ChecklistSummary>(this as ChecklistSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,categoryName,appGroupName);

@override
String toString() {
  return 'ChecklistSummary(id: $id, name: $name, categoryName: $categoryName, appGroupName: $appGroupName)';
}


}

/// @nodoc
abstract mixin class $ChecklistSummaryCopyWith<$Res>  {
  factory $ChecklistSummaryCopyWith(ChecklistSummary value, $Res Function(ChecklistSummary) _then) = _$ChecklistSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? categoryName, String? appGroupName
});




}
/// @nodoc
class _$ChecklistSummaryCopyWithImpl<$Res>
    implements $ChecklistSummaryCopyWith<$Res> {
  _$ChecklistSummaryCopyWithImpl(this._self, this._then);

  final ChecklistSummary _self;
  final $Res Function(ChecklistSummary) _then;

/// Create a copy of ChecklistSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? categoryName = freezed,Object? appGroupName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistSummary].
extension ChecklistSummaryPatterns on ChecklistSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistSummary value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? categoryName,  String? appGroupName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistSummary() when $default != null:
return $default(_that.id,_that.name,_that.categoryName,_that.appGroupName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? categoryName,  String? appGroupName)  $default,) {final _that = this;
switch (_that) {
case _ChecklistSummary():
return $default(_that.id,_that.name,_that.categoryName,_that.appGroupName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? categoryName,  String? appGroupName)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistSummary() when $default != null:
return $default(_that.id,_that.name,_that.categoryName,_that.appGroupName);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistSummary implements ChecklistSummary {
  const _ChecklistSummary({required this.id, required this.name, this.categoryName, this.appGroupName});
  

@override final  String id;
@override final  String name;
@override final  String? categoryName;
@override final  String? appGroupName;

/// Create a copy of ChecklistSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistSummaryCopyWith<_ChecklistSummary> get copyWith => __$ChecklistSummaryCopyWithImpl<_ChecklistSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,categoryName,appGroupName);

@override
String toString() {
  return 'ChecklistSummary(id: $id, name: $name, categoryName: $categoryName, appGroupName: $appGroupName)';
}


}

/// @nodoc
abstract mixin class _$ChecklistSummaryCopyWith<$Res> implements $ChecklistSummaryCopyWith<$Res> {
  factory _$ChecklistSummaryCopyWith(_ChecklistSummary value, $Res Function(_ChecklistSummary) _then) = __$ChecklistSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? categoryName, String? appGroupName
});




}
/// @nodoc
class __$ChecklistSummaryCopyWithImpl<$Res>
    implements _$ChecklistSummaryCopyWith<$Res> {
  __$ChecklistSummaryCopyWithImpl(this._self, this._then);

  final _ChecklistSummary _self;
  final $Res Function(_ChecklistSummary) _then;

/// Create a copy of ChecklistSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? categoryName = freezed,Object? appGroupName = freezed,}) {
  return _then(_ChecklistSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ChecklistDetails {

 String get id; String get name; String? get categoryName; String? get appGroupName; String? get dateCreated; String? get lastUpdated; String? get description;
/// Create a copy of ChecklistDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistDetailsCopyWith<ChecklistDetails> get copyWith => _$ChecklistDetailsCopyWithImpl<ChecklistDetails>(this as ChecklistDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,categoryName,appGroupName,dateCreated,lastUpdated,description);

@override
String toString() {
  return 'ChecklistDetails(id: $id, name: $name, categoryName: $categoryName, appGroupName: $appGroupName, dateCreated: $dateCreated, lastUpdated: $lastUpdated, description: $description)';
}


}

/// @nodoc
abstract mixin class $ChecklistDetailsCopyWith<$Res>  {
  factory $ChecklistDetailsCopyWith(ChecklistDetails value, $Res Function(ChecklistDetails) _then) = _$ChecklistDetailsCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? categoryName, String? appGroupName, String? dateCreated, String? lastUpdated, String? description
});




}
/// @nodoc
class _$ChecklistDetailsCopyWithImpl<$Res>
    implements $ChecklistDetailsCopyWith<$Res> {
  _$ChecklistDetailsCopyWithImpl(this._self, this._then);

  final ChecklistDetails _self;
  final $Res Function(ChecklistDetails) _then;

/// Create a copy of ChecklistDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? categoryName = freezed,Object? appGroupName = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistDetails].
extension ChecklistDetailsPatterns on ChecklistDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistDetails value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? categoryName,  String? appGroupName,  String? dateCreated,  String? lastUpdated,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistDetails() when $default != null:
return $default(_that.id,_that.name,_that.categoryName,_that.appGroupName,_that.dateCreated,_that.lastUpdated,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? categoryName,  String? appGroupName,  String? dateCreated,  String? lastUpdated,  String? description)  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetails():
return $default(_that.id,_that.name,_that.categoryName,_that.appGroupName,_that.dateCreated,_that.lastUpdated,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? categoryName,  String? appGroupName,  String? dateCreated,  String? lastUpdated,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetails() when $default != null:
return $default(_that.id,_that.name,_that.categoryName,_that.appGroupName,_that.dateCreated,_that.lastUpdated,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistDetails implements ChecklistDetails {
  const _ChecklistDetails({required this.id, required this.name, this.categoryName, this.appGroupName, this.dateCreated, this.lastUpdated, this.description});
  

@override final  String id;
@override final  String name;
@override final  String? categoryName;
@override final  String? appGroupName;
@override final  String? dateCreated;
@override final  String? lastUpdated;
@override final  String? description;

/// Create a copy of ChecklistDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistDetailsCopyWith<_ChecklistDetails> get copyWith => __$ChecklistDetailsCopyWithImpl<_ChecklistDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,categoryName,appGroupName,dateCreated,lastUpdated,description);

@override
String toString() {
  return 'ChecklistDetails(id: $id, name: $name, categoryName: $categoryName, appGroupName: $appGroupName, dateCreated: $dateCreated, lastUpdated: $lastUpdated, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ChecklistDetailsCopyWith<$Res> implements $ChecklistDetailsCopyWith<$Res> {
  factory _$ChecklistDetailsCopyWith(_ChecklistDetails value, $Res Function(_ChecklistDetails) _then) = __$ChecklistDetailsCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? categoryName, String? appGroupName, String? dateCreated, String? lastUpdated, String? description
});




}
/// @nodoc
class __$ChecklistDetailsCopyWithImpl<$Res>
    implements _$ChecklistDetailsCopyWith<$Res> {
  __$ChecklistDetailsCopyWithImpl(this._self, this._then);

  final _ChecklistDetails _self;
  final $Res Function(_ChecklistDetails) _then;

/// Create a copy of ChecklistDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? categoryName = freezed,Object? appGroupName = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? description = freezed,}) {
  return _then(_ChecklistDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
