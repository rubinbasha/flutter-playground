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
mixin _$ChecklistPage {

 List<ChecklistSummary> get items; int get totalCount;
/// Create a copy of ChecklistPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistPageCopyWith<ChecklistPage> get copyWith => _$ChecklistPageCopyWithImpl<ChecklistPage>(this as ChecklistPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistPage&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalCount);

@override
String toString() {
  return 'ChecklistPage(items: $items, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class $ChecklistPageCopyWith<$Res>  {
  factory $ChecklistPageCopyWith(ChecklistPage value, $Res Function(ChecklistPage) _then) = _$ChecklistPageCopyWithImpl;
@useResult
$Res call({
 List<ChecklistSummary> items, int totalCount
});




}
/// @nodoc
class _$ChecklistPageCopyWithImpl<$Res>
    implements $ChecklistPageCopyWith<$Res> {
  _$ChecklistPageCopyWithImpl(this._self, this._then);

  final ChecklistPage _self;
  final $Res Function(ChecklistPage) _then;

/// Create a copy of ChecklistPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalCount = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ChecklistSummary>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistPage].
extension ChecklistPagePatterns on ChecklistPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistPage value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistPage value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChecklistSummary> items,  int totalCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistPage() when $default != null:
return $default(_that.items,_that.totalCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChecklistSummary> items,  int totalCount)  $default,) {final _that = this;
switch (_that) {
case _ChecklistPage():
return $default(_that.items,_that.totalCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChecklistSummary> items,  int totalCount)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistPage() when $default != null:
return $default(_that.items,_that.totalCount);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistPage implements ChecklistPage {
  const _ChecklistPage({required final  List<ChecklistSummary> items, required this.totalCount}): _items = items;
  

 final  List<ChecklistSummary> _items;
@override List<ChecklistSummary> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalCount;

/// Create a copy of ChecklistPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistPageCopyWith<_ChecklistPage> get copyWith => __$ChecklistPageCopyWithImpl<_ChecklistPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistPage&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalCount);

@override
String toString() {
  return 'ChecklistPage(items: $items, totalCount: $totalCount)';
}


}

/// @nodoc
abstract mixin class _$ChecklistPageCopyWith<$Res> implements $ChecklistPageCopyWith<$Res> {
  factory _$ChecklistPageCopyWith(_ChecklistPage value, $Res Function(_ChecklistPage) _then) = __$ChecklistPageCopyWithImpl;
@override @useResult
$Res call({
 List<ChecklistSummary> items, int totalCount
});




}
/// @nodoc
class __$ChecklistPageCopyWithImpl<$Res>
    implements _$ChecklistPageCopyWith<$Res> {
  __$ChecklistPageCopyWithImpl(this._self, this._then);

  final _ChecklistPage _self;
  final $Res Function(_ChecklistPage) _then;

/// Create a copy of ChecklistPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalCount = null,}) {
  return _then(_ChecklistPage(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ChecklistSummary>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

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

 String get id; String get name; String? get categoryName; String? get appGroupName; String? get companyName; String? get dateCreated; String? get lastUpdated; String? get versionNumber; bool? get editRight; String? get description; List<ChecklistSection> get sections;
/// Create a copy of ChecklistDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistDetailsCopyWith<ChecklistDetails> get copyWith => _$ChecklistDetailsCopyWithImpl<ChecklistDetails>(this as ChecklistDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.versionNumber, versionNumber) || other.versionNumber == versionNumber)&&(identical(other.editRight, editRight) || other.editRight == editRight)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.sections, sections));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,categoryName,appGroupName,companyName,dateCreated,lastUpdated,versionNumber,editRight,description,const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'ChecklistDetails(id: $id, name: $name, categoryName: $categoryName, appGroupName: $appGroupName, companyName: $companyName, dateCreated: $dateCreated, lastUpdated: $lastUpdated, versionNumber: $versionNumber, editRight: $editRight, description: $description, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $ChecklistDetailsCopyWith<$Res>  {
  factory $ChecklistDetailsCopyWith(ChecklistDetails value, $Res Function(ChecklistDetails) _then) = _$ChecklistDetailsCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? categoryName, String? appGroupName, String? companyName, String? dateCreated, String? lastUpdated, String? versionNumber, bool? editRight, String? description, List<ChecklistSection> sections
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? categoryName = freezed,Object? appGroupName = freezed,Object? companyName = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? versionNumber = freezed,Object? editRight = freezed,Object? description = freezed,Object? sections = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,versionNumber: freezed == versionNumber ? _self.versionNumber : versionNumber // ignore: cast_nullable_to_non_nullable
as String?,editRight: freezed == editRight ? _self.editRight : editRight // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<ChecklistSection>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? categoryName,  String? appGroupName,  String? companyName,  String? dateCreated,  String? lastUpdated,  String? versionNumber,  bool? editRight,  String? description,  List<ChecklistSection> sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistDetails() when $default != null:
return $default(_that.id,_that.name,_that.categoryName,_that.appGroupName,_that.companyName,_that.dateCreated,_that.lastUpdated,_that.versionNumber,_that.editRight,_that.description,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? categoryName,  String? appGroupName,  String? companyName,  String? dateCreated,  String? lastUpdated,  String? versionNumber,  bool? editRight,  String? description,  List<ChecklistSection> sections)  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetails():
return $default(_that.id,_that.name,_that.categoryName,_that.appGroupName,_that.companyName,_that.dateCreated,_that.lastUpdated,_that.versionNumber,_that.editRight,_that.description,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? categoryName,  String? appGroupName,  String? companyName,  String? dateCreated,  String? lastUpdated,  String? versionNumber,  bool? editRight,  String? description,  List<ChecklistSection> sections)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetails() when $default != null:
return $default(_that.id,_that.name,_that.categoryName,_that.appGroupName,_that.companyName,_that.dateCreated,_that.lastUpdated,_that.versionNumber,_that.editRight,_that.description,_that.sections);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistDetails implements ChecklistDetails {
  const _ChecklistDetails({required this.id, required this.name, this.categoryName, this.appGroupName, this.companyName, this.dateCreated, this.lastUpdated, this.versionNumber, this.editRight, this.description, final  List<ChecklistSection> sections = const <ChecklistSection>[]}): _sections = sections;
  

@override final  String id;
@override final  String name;
@override final  String? categoryName;
@override final  String? appGroupName;
@override final  String? companyName;
@override final  String? dateCreated;
@override final  String? lastUpdated;
@override final  String? versionNumber;
@override final  bool? editRight;
@override final  String? description;
 final  List<ChecklistSection> _sections;
@override@JsonKey() List<ChecklistSection> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of ChecklistDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistDetailsCopyWith<_ChecklistDetails> get copyWith => __$ChecklistDetailsCopyWithImpl<_ChecklistDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.versionNumber, versionNumber) || other.versionNumber == versionNumber)&&(identical(other.editRight, editRight) || other.editRight == editRight)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._sections, _sections));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,categoryName,appGroupName,companyName,dateCreated,lastUpdated,versionNumber,editRight,description,const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'ChecklistDetails(id: $id, name: $name, categoryName: $categoryName, appGroupName: $appGroupName, companyName: $companyName, dateCreated: $dateCreated, lastUpdated: $lastUpdated, versionNumber: $versionNumber, editRight: $editRight, description: $description, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$ChecklistDetailsCopyWith<$Res> implements $ChecklistDetailsCopyWith<$Res> {
  factory _$ChecklistDetailsCopyWith(_ChecklistDetails value, $Res Function(_ChecklistDetails) _then) = __$ChecklistDetailsCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? categoryName, String? appGroupName, String? companyName, String? dateCreated, String? lastUpdated, String? versionNumber, bool? editRight, String? description, List<ChecklistSection> sections
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? categoryName = freezed,Object? appGroupName = freezed,Object? companyName = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? versionNumber = freezed,Object? editRight = freezed,Object? description = freezed,Object? sections = null,}) {
  return _then(_ChecklistDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,versionNumber: freezed == versionNumber ? _self.versionNumber : versionNumber // ignore: cast_nullable_to_non_nullable
as String?,editRight: freezed == editRight ? _self.editRight : editRight // ignore: cast_nullable_to_non_nullable
as bool?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<ChecklistSection>,
  ));
}


}

/// @nodoc
mixin _$ChecklistSection {

 String get id; String get name; int? get sortOrder; List<ChecklistField> get fields;
/// Create a copy of ChecklistSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistSectionCopyWith<ChecklistSection> get copyWith => _$ChecklistSectionCopyWithImpl<ChecklistSection>(this as ChecklistSection, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistSection&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other.fields, fields));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,sortOrder,const DeepCollectionEquality().hash(fields));

@override
String toString() {
  return 'ChecklistSection(id: $id, name: $name, sortOrder: $sortOrder, fields: $fields)';
}


}

/// @nodoc
abstract mixin class $ChecklistSectionCopyWith<$Res>  {
  factory $ChecklistSectionCopyWith(ChecklistSection value, $Res Function(ChecklistSection) _then) = _$ChecklistSectionCopyWithImpl;
@useResult
$Res call({
 String id, String name, int? sortOrder, List<ChecklistField> fields
});




}
/// @nodoc
class _$ChecklistSectionCopyWithImpl<$Res>
    implements $ChecklistSectionCopyWith<$Res> {
  _$ChecklistSectionCopyWithImpl(this._self, this._then);

  final ChecklistSection _self;
  final $Res Function(ChecklistSection) _then;

/// Create a copy of ChecklistSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? sortOrder = freezed,Object? fields = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<ChecklistField>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistSection].
extension ChecklistSectionPatterns on ChecklistSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistSection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistSection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistSection value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistSection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistSection value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistSection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int? sortOrder,  List<ChecklistField> fields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistSection() when $default != null:
return $default(_that.id,_that.name,_that.sortOrder,_that.fields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int? sortOrder,  List<ChecklistField> fields)  $default,) {final _that = this;
switch (_that) {
case _ChecklistSection():
return $default(_that.id,_that.name,_that.sortOrder,_that.fields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int? sortOrder,  List<ChecklistField> fields)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistSection() when $default != null:
return $default(_that.id,_that.name,_that.sortOrder,_that.fields);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistSection implements ChecklistSection {
  const _ChecklistSection({required this.id, required this.name, this.sortOrder, final  List<ChecklistField> fields = const <ChecklistField>[]}): _fields = fields;
  

@override final  String id;
@override final  String name;
@override final  int? sortOrder;
 final  List<ChecklistField> _fields;
@override@JsonKey() List<ChecklistField> get fields {
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fields);
}


/// Create a copy of ChecklistSection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistSectionCopyWith<_ChecklistSection> get copyWith => __$ChecklistSectionCopyWithImpl<_ChecklistSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistSection&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other._fields, _fields));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,sortOrder,const DeepCollectionEquality().hash(_fields));

@override
String toString() {
  return 'ChecklistSection(id: $id, name: $name, sortOrder: $sortOrder, fields: $fields)';
}


}

/// @nodoc
abstract mixin class _$ChecklistSectionCopyWith<$Res> implements $ChecklistSectionCopyWith<$Res> {
  factory _$ChecklistSectionCopyWith(_ChecklistSection value, $Res Function(_ChecklistSection) _then) = __$ChecklistSectionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int? sortOrder, List<ChecklistField> fields
});




}
/// @nodoc
class __$ChecklistSectionCopyWithImpl<$Res>
    implements _$ChecklistSectionCopyWith<$Res> {
  __$ChecklistSectionCopyWithImpl(this._self, this._then);

  final _ChecklistSection _self;
  final $Res Function(_ChecklistSection) _then;

/// Create a copy of ChecklistSection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? sortOrder = freezed,Object? fields = null,}) {
  return _then(_ChecklistSection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<ChecklistField>,
  ));
}


}

/// @nodoc
mixin _$ChecklistField {

 String get id; String get name; String? get fieldTypeId; String? get fieldTypeName; int? get sortOrder; bool get isRequired; bool get isTextArea; bool get isMultiple; bool get isDateTime; bool get isSignature;
/// Create a copy of ChecklistField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistFieldCopyWith<ChecklistField> get copyWith => _$ChecklistFieldCopyWithImpl<ChecklistField>(this as ChecklistField, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistField&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fieldTypeId, fieldTypeId) || other.fieldTypeId == fieldTypeId)&&(identical(other.fieldTypeName, fieldTypeName) || other.fieldTypeName == fieldTypeName)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isTextArea, isTextArea) || other.isTextArea == isTextArea)&&(identical(other.isMultiple, isMultiple) || other.isMultiple == isMultiple)&&(identical(other.isDateTime, isDateTime) || other.isDateTime == isDateTime)&&(identical(other.isSignature, isSignature) || other.isSignature == isSignature));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,fieldTypeId,fieldTypeName,sortOrder,isRequired,isTextArea,isMultiple,isDateTime,isSignature);

@override
String toString() {
  return 'ChecklistField(id: $id, name: $name, fieldTypeId: $fieldTypeId, fieldTypeName: $fieldTypeName, sortOrder: $sortOrder, isRequired: $isRequired, isTextArea: $isTextArea, isMultiple: $isMultiple, isDateTime: $isDateTime, isSignature: $isSignature)';
}


}

/// @nodoc
abstract mixin class $ChecklistFieldCopyWith<$Res>  {
  factory $ChecklistFieldCopyWith(ChecklistField value, $Res Function(ChecklistField) _then) = _$ChecklistFieldCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? fieldTypeId, String? fieldTypeName, int? sortOrder, bool isRequired, bool isTextArea, bool isMultiple, bool isDateTime, bool isSignature
});




}
/// @nodoc
class _$ChecklistFieldCopyWithImpl<$Res>
    implements $ChecklistFieldCopyWith<$Res> {
  _$ChecklistFieldCopyWithImpl(this._self, this._then);

  final ChecklistField _self;
  final $Res Function(ChecklistField) _then;

/// Create a copy of ChecklistField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? fieldTypeId = freezed,Object? fieldTypeName = freezed,Object? sortOrder = freezed,Object? isRequired = null,Object? isTextArea = null,Object? isMultiple = null,Object? isDateTime = null,Object? isSignature = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fieldTypeId: freezed == fieldTypeId ? _self.fieldTypeId : fieldTypeId // ignore: cast_nullable_to_non_nullable
as String?,fieldTypeName: freezed == fieldTypeName ? _self.fieldTypeName : fieldTypeName // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isTextArea: null == isTextArea ? _self.isTextArea : isTextArea // ignore: cast_nullable_to_non_nullable
as bool,isMultiple: null == isMultiple ? _self.isMultiple : isMultiple // ignore: cast_nullable_to_non_nullable
as bool,isDateTime: null == isDateTime ? _self.isDateTime : isDateTime // ignore: cast_nullable_to_non_nullable
as bool,isSignature: null == isSignature ? _self.isSignature : isSignature // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistField].
extension ChecklistFieldPatterns on ChecklistField {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistField value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistField() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistField value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistField():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistField value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistField() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? fieldTypeId,  String? fieldTypeName,  int? sortOrder,  bool isRequired,  bool isTextArea,  bool isMultiple,  bool isDateTime,  bool isSignature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistField() when $default != null:
return $default(_that.id,_that.name,_that.fieldTypeId,_that.fieldTypeName,_that.sortOrder,_that.isRequired,_that.isTextArea,_that.isMultiple,_that.isDateTime,_that.isSignature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? fieldTypeId,  String? fieldTypeName,  int? sortOrder,  bool isRequired,  bool isTextArea,  bool isMultiple,  bool isDateTime,  bool isSignature)  $default,) {final _that = this;
switch (_that) {
case _ChecklistField():
return $default(_that.id,_that.name,_that.fieldTypeId,_that.fieldTypeName,_that.sortOrder,_that.isRequired,_that.isTextArea,_that.isMultiple,_that.isDateTime,_that.isSignature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? fieldTypeId,  String? fieldTypeName,  int? sortOrder,  bool isRequired,  bool isTextArea,  bool isMultiple,  bool isDateTime,  bool isSignature)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistField() when $default != null:
return $default(_that.id,_that.name,_that.fieldTypeId,_that.fieldTypeName,_that.sortOrder,_that.isRequired,_that.isTextArea,_that.isMultiple,_that.isDateTime,_that.isSignature);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistField implements ChecklistField {
  const _ChecklistField({required this.id, required this.name, this.fieldTypeId, this.fieldTypeName, this.sortOrder, this.isRequired = false, this.isTextArea = false, this.isMultiple = false, this.isDateTime = false, this.isSignature = false});
  

@override final  String id;
@override final  String name;
@override final  String? fieldTypeId;
@override final  String? fieldTypeName;
@override final  int? sortOrder;
@override@JsonKey() final  bool isRequired;
@override@JsonKey() final  bool isTextArea;
@override@JsonKey() final  bool isMultiple;
@override@JsonKey() final  bool isDateTime;
@override@JsonKey() final  bool isSignature;

/// Create a copy of ChecklistField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistFieldCopyWith<_ChecklistField> get copyWith => __$ChecklistFieldCopyWithImpl<_ChecklistField>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistField&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fieldTypeId, fieldTypeId) || other.fieldTypeId == fieldTypeId)&&(identical(other.fieldTypeName, fieldTypeName) || other.fieldTypeName == fieldTypeName)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.isTextArea, isTextArea) || other.isTextArea == isTextArea)&&(identical(other.isMultiple, isMultiple) || other.isMultiple == isMultiple)&&(identical(other.isDateTime, isDateTime) || other.isDateTime == isDateTime)&&(identical(other.isSignature, isSignature) || other.isSignature == isSignature));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,fieldTypeId,fieldTypeName,sortOrder,isRequired,isTextArea,isMultiple,isDateTime,isSignature);

@override
String toString() {
  return 'ChecklistField(id: $id, name: $name, fieldTypeId: $fieldTypeId, fieldTypeName: $fieldTypeName, sortOrder: $sortOrder, isRequired: $isRequired, isTextArea: $isTextArea, isMultiple: $isMultiple, isDateTime: $isDateTime, isSignature: $isSignature)';
}


}

/// @nodoc
abstract mixin class _$ChecklistFieldCopyWith<$Res> implements $ChecklistFieldCopyWith<$Res> {
  factory _$ChecklistFieldCopyWith(_ChecklistField value, $Res Function(_ChecklistField) _then) = __$ChecklistFieldCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? fieldTypeId, String? fieldTypeName, int? sortOrder, bool isRequired, bool isTextArea, bool isMultiple, bool isDateTime, bool isSignature
});




}
/// @nodoc
class __$ChecklistFieldCopyWithImpl<$Res>
    implements _$ChecklistFieldCopyWith<$Res> {
  __$ChecklistFieldCopyWithImpl(this._self, this._then);

  final _ChecklistField _self;
  final $Res Function(_ChecklistField) _then;

/// Create a copy of ChecklistField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? fieldTypeId = freezed,Object? fieldTypeName = freezed,Object? sortOrder = freezed,Object? isRequired = null,Object? isTextArea = null,Object? isMultiple = null,Object? isDateTime = null,Object? isSignature = null,}) {
  return _then(_ChecklistField(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fieldTypeId: freezed == fieldTypeId ? _self.fieldTypeId : fieldTypeId // ignore: cast_nullable_to_non_nullable
as String?,fieldTypeName: freezed == fieldTypeName ? _self.fieldTypeName : fieldTypeName // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,isTextArea: null == isTextArea ? _self.isTextArea : isTextArea // ignore: cast_nullable_to_non_nullable
as bool,isMultiple: null == isMultiple ? _self.isMultiple : isMultiple // ignore: cast_nullable_to_non_nullable
as bool,isDateTime: null == isDateTime ? _self.isDateTime : isDateTime // ignore: cast_nullable_to_non_nullable
as bool,isSignature: null == isSignature ? _self.isSignature : isSignature // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
