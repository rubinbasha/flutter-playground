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

 String? get id; String? get name;@JsonKey(name: 'checklistcategoryName') String? get checklistCategoryName;@JsonKey(name: 'appgroupName') String? get appGroupName;
/// Create a copy of ChecklistItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistItemDtoCopyWith<ChecklistItemDto> get copyWith => _$ChecklistItemDtoCopyWithImpl<ChecklistItemDto>(this as ChecklistItemDto, _$identity);

  /// Serializes this ChecklistItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.checklistCategoryName, checklistCategoryName) || other.checklistCategoryName == checklistCategoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,checklistCategoryName,appGroupName);

@override
String toString() {
  return 'ChecklistItemDto(id: $id, name: $name, checklistCategoryName: $checklistCategoryName, appGroupName: $appGroupName)';
}


}

/// @nodoc
abstract mixin class $ChecklistItemDtoCopyWith<$Res>  {
  factory $ChecklistItemDtoCopyWith(ChecklistItemDto value, $Res Function(ChecklistItemDto) _then) = _$ChecklistItemDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'checklistcategoryName') String? checklistCategoryName,@JsonKey(name: 'appgroupName') String? appGroupName
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? checklistCategoryName = freezed,Object? appGroupName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,checklistCategoryName: freezed == checklistCategoryName ? _self.checklistCategoryName : checklistCategoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'checklistcategoryName')  String? checklistCategoryName, @JsonKey(name: 'appgroupName')  String? appGroupName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistItemDto() when $default != null:
return $default(_that.id,_that.name,_that.checklistCategoryName,_that.appGroupName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'checklistcategoryName')  String? checklistCategoryName, @JsonKey(name: 'appgroupName')  String? appGroupName)  $default,) {final _that = this;
switch (_that) {
case _ChecklistItemDto():
return $default(_that.id,_that.name,_that.checklistCategoryName,_that.appGroupName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name, @JsonKey(name: 'checklistcategoryName')  String? checklistCategoryName, @JsonKey(name: 'appgroupName')  String? appGroupName)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistItemDto() when $default != null:
return $default(_that.id,_that.name,_that.checklistCategoryName,_that.appGroupName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistItemDto implements ChecklistItemDto {
  const _ChecklistItemDto({this.id, this.name, @JsonKey(name: 'checklistcategoryName') this.checklistCategoryName, @JsonKey(name: 'appgroupName') this.appGroupName});
  factory _ChecklistItemDto.fromJson(Map<String, dynamic> json) => _$ChecklistItemDtoFromJson(json);

@override final  String? id;
@override final  String? name;
@override@JsonKey(name: 'checklistcategoryName') final  String? checklistCategoryName;
@override@JsonKey(name: 'appgroupName') final  String? appGroupName;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.checklistCategoryName, checklistCategoryName) || other.checklistCategoryName == checklistCategoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,checklistCategoryName,appGroupName);

@override
String toString() {
  return 'ChecklistItemDto(id: $id, name: $name, checklistCategoryName: $checklistCategoryName, appGroupName: $appGroupName)';
}


}

/// @nodoc
abstract mixin class _$ChecklistItemDtoCopyWith<$Res> implements $ChecklistItemDtoCopyWith<$Res> {
  factory _$ChecklistItemDtoCopyWith(_ChecklistItemDto value, $Res Function(_ChecklistItemDto) _then) = __$ChecklistItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'checklistcategoryName') String? checklistCategoryName,@JsonKey(name: 'appgroupName') String? appGroupName
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? checklistCategoryName = freezed,Object? appGroupName = freezed,}) {
  return _then(_ChecklistItemDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,checklistCategoryName: freezed == checklistCategoryName ? _self.checklistCategoryName : checklistCategoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChecklistDetailsDto {

 String? get id; String? get name; String? get lastUpdated; String? get dateCreated; int? get standard;@JsonKey(name: 'commonwrite') bool? get commonWrite;@JsonKey(name: 'istemp') bool? get isTemp; bool? get deleted;@JsonKey(name: 'editright') bool? get editRight;@JsonKey(name: 'fontstyle') String? get fontStyle;@JsonKey(name: 'fontsize') double? get fontSize; String? get borders;@JsonKey(name: 'outputformat') String? get outputFormat;@JsonKey(name: 'preremarks') bool? get preRemarks; bool? get appendix;@JsonKey(name: 'pagebreak') bool? get pageBreak;@JsonKey(name: 'prodbycheckit') bool? get producedByCheckit;@JsonKey(name: 'versionnumber') String? get versionNumber;@JsonKey(name: 'borderwidth') double? get borderWidth;@JsonKey(name: 'funderlinehead') bool? get fieldUnderlineHeader;@JsonKey(name: 'fitalichead') bool? get fieldItalicHeader;@JsonKey(name: 'fboldhead') bool? get fieldBoldHeader;@JsonKey(name: 'funderlinebody') bool? get fieldUnderlineBody;@JsonKey(name: 'fitalicbody') bool? get fieldItalicBody;@JsonKey(name: 'fboldbody') bool? get fieldBoldBody;@JsonKey(name: 'cunderlinehead') bool? get checklistUnderlineHeader;@JsonKey(name: 'citalichead') bool? get checklistItalicHeader;@JsonKey(name: 'cboldhead') bool? get checklistBoldHeader;@JsonKey(name: 'cunderlinebody') bool? get checklistUnderlineBody;@JsonKey(name: 'citalicbody') bool? get checklistItalicBody;@JsonKey(name: 'cboldbody') bool? get checklistBoldBody; bool? get breakAnswers;@JsonKey(name: 'titlemask') String? get titleMask; String? get companyId;@JsonKey(name: 'checklistcategoryId') String? get checklistCategoryId;@JsonKey(name: 'appgroupId') String? get appGroupId; String? get companyName;@JsonKey(name: 'checklistcategoryName') String? get checklistCategoryName;@JsonKey(name: 'appgroupName') String? get appGroupName;@JsonKey(name: 'isobject') bool? get isObject;@JsonKey(name: 'hideemptysection') bool? get hideEmptySection;@JsonKey(name: 'islinked') bool? get isLinked;@JsonKey(name: 'formfieldCreatedby') String? get formFieldCreatedBy;@JsonKey(name: 'formfieldCreatedbyId') String? get formFieldCreatedById;@JsonKey(name: 'formfieldCreated') String? get formFieldCreated;@JsonKey(name: 'formfieldCreatedId') String? get formFieldCreatedId;@JsonKey(name: 'formfieldName') String? get formFieldName;@JsonKey(name: 'formfieldNameId') String? get formFieldNameId;@JsonKey(name: 'hastemplate') bool? get hasTemplate;@JsonKey(name: 'fforwardbody') String? get forwardBody; List<ChecklistSectionDto> get sections;
/// Create a copy of ChecklistDetailsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistDetailsDtoCopyWith<ChecklistDetailsDto> get copyWith => _$ChecklistDetailsDtoCopyWithImpl<ChecklistDetailsDto>(this as ChecklistDetailsDto, _$identity);

  /// Serializes this ChecklistDetailsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistDetailsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.standard, standard) || other.standard == standard)&&(identical(other.commonWrite, commonWrite) || other.commonWrite == commonWrite)&&(identical(other.isTemp, isTemp) || other.isTemp == isTemp)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.editRight, editRight) || other.editRight == editRight)&&(identical(other.fontStyle, fontStyle) || other.fontStyle == fontStyle)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.borders, borders) || other.borders == borders)&&(identical(other.outputFormat, outputFormat) || other.outputFormat == outputFormat)&&(identical(other.preRemarks, preRemarks) || other.preRemarks == preRemarks)&&(identical(other.appendix, appendix) || other.appendix == appendix)&&(identical(other.pageBreak, pageBreak) || other.pageBreak == pageBreak)&&(identical(other.producedByCheckit, producedByCheckit) || other.producedByCheckit == producedByCheckit)&&(identical(other.versionNumber, versionNumber) || other.versionNumber == versionNumber)&&(identical(other.borderWidth, borderWidth) || other.borderWidth == borderWidth)&&(identical(other.fieldUnderlineHeader, fieldUnderlineHeader) || other.fieldUnderlineHeader == fieldUnderlineHeader)&&(identical(other.fieldItalicHeader, fieldItalicHeader) || other.fieldItalicHeader == fieldItalicHeader)&&(identical(other.fieldBoldHeader, fieldBoldHeader) || other.fieldBoldHeader == fieldBoldHeader)&&(identical(other.fieldUnderlineBody, fieldUnderlineBody) || other.fieldUnderlineBody == fieldUnderlineBody)&&(identical(other.fieldItalicBody, fieldItalicBody) || other.fieldItalicBody == fieldItalicBody)&&(identical(other.fieldBoldBody, fieldBoldBody) || other.fieldBoldBody == fieldBoldBody)&&(identical(other.checklistUnderlineHeader, checklistUnderlineHeader) || other.checklistUnderlineHeader == checklistUnderlineHeader)&&(identical(other.checklistItalicHeader, checklistItalicHeader) || other.checklistItalicHeader == checklistItalicHeader)&&(identical(other.checklistBoldHeader, checklistBoldHeader) || other.checklistBoldHeader == checklistBoldHeader)&&(identical(other.checklistUnderlineBody, checklistUnderlineBody) || other.checklistUnderlineBody == checklistUnderlineBody)&&(identical(other.checklistItalicBody, checklistItalicBody) || other.checklistItalicBody == checklistItalicBody)&&(identical(other.checklistBoldBody, checklistBoldBody) || other.checklistBoldBody == checklistBoldBody)&&(identical(other.breakAnswers, breakAnswers) || other.breakAnswers == breakAnswers)&&(identical(other.titleMask, titleMask) || other.titleMask == titleMask)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.checklistCategoryId, checklistCategoryId) || other.checklistCategoryId == checklistCategoryId)&&(identical(other.appGroupId, appGroupId) || other.appGroupId == appGroupId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.checklistCategoryName, checklistCategoryName) || other.checklistCategoryName == checklistCategoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName)&&(identical(other.isObject, isObject) || other.isObject == isObject)&&(identical(other.hideEmptySection, hideEmptySection) || other.hideEmptySection == hideEmptySection)&&(identical(other.isLinked, isLinked) || other.isLinked == isLinked)&&(identical(other.formFieldCreatedBy, formFieldCreatedBy) || other.formFieldCreatedBy == formFieldCreatedBy)&&(identical(other.formFieldCreatedById, formFieldCreatedById) || other.formFieldCreatedById == formFieldCreatedById)&&(identical(other.formFieldCreated, formFieldCreated) || other.formFieldCreated == formFieldCreated)&&(identical(other.formFieldCreatedId, formFieldCreatedId) || other.formFieldCreatedId == formFieldCreatedId)&&(identical(other.formFieldName, formFieldName) || other.formFieldName == formFieldName)&&(identical(other.formFieldNameId, formFieldNameId) || other.formFieldNameId == formFieldNameId)&&(identical(other.hasTemplate, hasTemplate) || other.hasTemplate == hasTemplate)&&(identical(other.forwardBody, forwardBody) || other.forwardBody == forwardBody)&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,lastUpdated,dateCreated,standard,commonWrite,isTemp,deleted,editRight,fontStyle,fontSize,borders,outputFormat,preRemarks,appendix,pageBreak,producedByCheckit,versionNumber,borderWidth,fieldUnderlineHeader,fieldItalicHeader,fieldBoldHeader,fieldUnderlineBody,fieldItalicBody,fieldBoldBody,checklistUnderlineHeader,checklistItalicHeader,checklistBoldHeader,checklistUnderlineBody,checklistItalicBody,checklistBoldBody,breakAnswers,titleMask,companyId,checklistCategoryId,appGroupId,companyName,checklistCategoryName,appGroupName,isObject,hideEmptySection,isLinked,formFieldCreatedBy,formFieldCreatedById,formFieldCreated,formFieldCreatedId,formFieldName,formFieldNameId,hasTemplate,forwardBody,const DeepCollectionEquality().hash(sections)]);

@override
String toString() {
  return 'ChecklistDetailsDto(id: $id, name: $name, lastUpdated: $lastUpdated, dateCreated: $dateCreated, standard: $standard, commonWrite: $commonWrite, isTemp: $isTemp, deleted: $deleted, editRight: $editRight, fontStyle: $fontStyle, fontSize: $fontSize, borders: $borders, outputFormat: $outputFormat, preRemarks: $preRemarks, appendix: $appendix, pageBreak: $pageBreak, producedByCheckit: $producedByCheckit, versionNumber: $versionNumber, borderWidth: $borderWidth, fieldUnderlineHeader: $fieldUnderlineHeader, fieldItalicHeader: $fieldItalicHeader, fieldBoldHeader: $fieldBoldHeader, fieldUnderlineBody: $fieldUnderlineBody, fieldItalicBody: $fieldItalicBody, fieldBoldBody: $fieldBoldBody, checklistUnderlineHeader: $checklistUnderlineHeader, checklistItalicHeader: $checklistItalicHeader, checklistBoldHeader: $checklistBoldHeader, checklistUnderlineBody: $checklistUnderlineBody, checklistItalicBody: $checklistItalicBody, checklistBoldBody: $checklistBoldBody, breakAnswers: $breakAnswers, titleMask: $titleMask, companyId: $companyId, checklistCategoryId: $checklistCategoryId, appGroupId: $appGroupId, companyName: $companyName, checklistCategoryName: $checklistCategoryName, appGroupName: $appGroupName, isObject: $isObject, hideEmptySection: $hideEmptySection, isLinked: $isLinked, formFieldCreatedBy: $formFieldCreatedBy, formFieldCreatedById: $formFieldCreatedById, formFieldCreated: $formFieldCreated, formFieldCreatedId: $formFieldCreatedId, formFieldName: $formFieldName, formFieldNameId: $formFieldNameId, hasTemplate: $hasTemplate, forwardBody: $forwardBody, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $ChecklistDetailsDtoCopyWith<$Res>  {
  factory $ChecklistDetailsDtoCopyWith(ChecklistDetailsDto value, $Res Function(ChecklistDetailsDto) _then) = _$ChecklistDetailsDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? lastUpdated, String? dateCreated, int? standard,@JsonKey(name: 'commonwrite') bool? commonWrite,@JsonKey(name: 'istemp') bool? isTemp, bool? deleted,@JsonKey(name: 'editright') bool? editRight,@JsonKey(name: 'fontstyle') String? fontStyle,@JsonKey(name: 'fontsize') double? fontSize, String? borders,@JsonKey(name: 'outputformat') String? outputFormat,@JsonKey(name: 'preremarks') bool? preRemarks, bool? appendix,@JsonKey(name: 'pagebreak') bool? pageBreak,@JsonKey(name: 'prodbycheckit') bool? producedByCheckit,@JsonKey(name: 'versionnumber') String? versionNumber,@JsonKey(name: 'borderwidth') double? borderWidth,@JsonKey(name: 'funderlinehead') bool? fieldUnderlineHeader,@JsonKey(name: 'fitalichead') bool? fieldItalicHeader,@JsonKey(name: 'fboldhead') bool? fieldBoldHeader,@JsonKey(name: 'funderlinebody') bool? fieldUnderlineBody,@JsonKey(name: 'fitalicbody') bool? fieldItalicBody,@JsonKey(name: 'fboldbody') bool? fieldBoldBody,@JsonKey(name: 'cunderlinehead') bool? checklistUnderlineHeader,@JsonKey(name: 'citalichead') bool? checklistItalicHeader,@JsonKey(name: 'cboldhead') bool? checklistBoldHeader,@JsonKey(name: 'cunderlinebody') bool? checklistUnderlineBody,@JsonKey(name: 'citalicbody') bool? checklistItalicBody,@JsonKey(name: 'cboldbody') bool? checklistBoldBody, bool? breakAnswers,@JsonKey(name: 'titlemask') String? titleMask, String? companyId,@JsonKey(name: 'checklistcategoryId') String? checklistCategoryId,@JsonKey(name: 'appgroupId') String? appGroupId, String? companyName,@JsonKey(name: 'checklistcategoryName') String? checklistCategoryName,@JsonKey(name: 'appgroupName') String? appGroupName,@JsonKey(name: 'isobject') bool? isObject,@JsonKey(name: 'hideemptysection') bool? hideEmptySection,@JsonKey(name: 'islinked') bool? isLinked,@JsonKey(name: 'formfieldCreatedby') String? formFieldCreatedBy,@JsonKey(name: 'formfieldCreatedbyId') String? formFieldCreatedById,@JsonKey(name: 'formfieldCreated') String? formFieldCreated,@JsonKey(name: 'formfieldCreatedId') String? formFieldCreatedId,@JsonKey(name: 'formfieldName') String? formFieldName,@JsonKey(name: 'formfieldNameId') String? formFieldNameId,@JsonKey(name: 'hastemplate') bool? hasTemplate,@JsonKey(name: 'fforwardbody') String? forwardBody, List<ChecklistSectionDto> sections
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? lastUpdated = freezed,Object? dateCreated = freezed,Object? standard = freezed,Object? commonWrite = freezed,Object? isTemp = freezed,Object? deleted = freezed,Object? editRight = freezed,Object? fontStyle = freezed,Object? fontSize = freezed,Object? borders = freezed,Object? outputFormat = freezed,Object? preRemarks = freezed,Object? appendix = freezed,Object? pageBreak = freezed,Object? producedByCheckit = freezed,Object? versionNumber = freezed,Object? borderWidth = freezed,Object? fieldUnderlineHeader = freezed,Object? fieldItalicHeader = freezed,Object? fieldBoldHeader = freezed,Object? fieldUnderlineBody = freezed,Object? fieldItalicBody = freezed,Object? fieldBoldBody = freezed,Object? checklistUnderlineHeader = freezed,Object? checklistItalicHeader = freezed,Object? checklistBoldHeader = freezed,Object? checklistUnderlineBody = freezed,Object? checklistItalicBody = freezed,Object? checklistBoldBody = freezed,Object? breakAnswers = freezed,Object? titleMask = freezed,Object? companyId = freezed,Object? checklistCategoryId = freezed,Object? appGroupId = freezed,Object? companyName = freezed,Object? checklistCategoryName = freezed,Object? appGroupName = freezed,Object? isObject = freezed,Object? hideEmptySection = freezed,Object? isLinked = freezed,Object? formFieldCreatedBy = freezed,Object? formFieldCreatedById = freezed,Object? formFieldCreated = freezed,Object? formFieldCreatedId = freezed,Object? formFieldName = freezed,Object? formFieldNameId = freezed,Object? hasTemplate = freezed,Object? forwardBody = freezed,Object? sections = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,standard: freezed == standard ? _self.standard : standard // ignore: cast_nullable_to_non_nullable
as int?,commonWrite: freezed == commonWrite ? _self.commonWrite : commonWrite // ignore: cast_nullable_to_non_nullable
as bool?,isTemp: freezed == isTemp ? _self.isTemp : isTemp // ignore: cast_nullable_to_non_nullable
as bool?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,editRight: freezed == editRight ? _self.editRight : editRight // ignore: cast_nullable_to_non_nullable
as bool?,fontStyle: freezed == fontStyle ? _self.fontStyle : fontStyle // ignore: cast_nullable_to_non_nullable
as String?,fontSize: freezed == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double?,borders: freezed == borders ? _self.borders : borders // ignore: cast_nullable_to_non_nullable
as String?,outputFormat: freezed == outputFormat ? _self.outputFormat : outputFormat // ignore: cast_nullable_to_non_nullable
as String?,preRemarks: freezed == preRemarks ? _self.preRemarks : preRemarks // ignore: cast_nullable_to_non_nullable
as bool?,appendix: freezed == appendix ? _self.appendix : appendix // ignore: cast_nullable_to_non_nullable
as bool?,pageBreak: freezed == pageBreak ? _self.pageBreak : pageBreak // ignore: cast_nullable_to_non_nullable
as bool?,producedByCheckit: freezed == producedByCheckit ? _self.producedByCheckit : producedByCheckit // ignore: cast_nullable_to_non_nullable
as bool?,versionNumber: freezed == versionNumber ? _self.versionNumber : versionNumber // ignore: cast_nullable_to_non_nullable
as String?,borderWidth: freezed == borderWidth ? _self.borderWidth : borderWidth // ignore: cast_nullable_to_non_nullable
as double?,fieldUnderlineHeader: freezed == fieldUnderlineHeader ? _self.fieldUnderlineHeader : fieldUnderlineHeader // ignore: cast_nullable_to_non_nullable
as bool?,fieldItalicHeader: freezed == fieldItalicHeader ? _self.fieldItalicHeader : fieldItalicHeader // ignore: cast_nullable_to_non_nullable
as bool?,fieldBoldHeader: freezed == fieldBoldHeader ? _self.fieldBoldHeader : fieldBoldHeader // ignore: cast_nullable_to_non_nullable
as bool?,fieldUnderlineBody: freezed == fieldUnderlineBody ? _self.fieldUnderlineBody : fieldUnderlineBody // ignore: cast_nullable_to_non_nullable
as bool?,fieldItalicBody: freezed == fieldItalicBody ? _self.fieldItalicBody : fieldItalicBody // ignore: cast_nullable_to_non_nullable
as bool?,fieldBoldBody: freezed == fieldBoldBody ? _self.fieldBoldBody : fieldBoldBody // ignore: cast_nullable_to_non_nullable
as bool?,checklistUnderlineHeader: freezed == checklistUnderlineHeader ? _self.checklistUnderlineHeader : checklistUnderlineHeader // ignore: cast_nullable_to_non_nullable
as bool?,checklistItalicHeader: freezed == checklistItalicHeader ? _self.checklistItalicHeader : checklistItalicHeader // ignore: cast_nullable_to_non_nullable
as bool?,checklistBoldHeader: freezed == checklistBoldHeader ? _self.checklistBoldHeader : checklistBoldHeader // ignore: cast_nullable_to_non_nullable
as bool?,checklistUnderlineBody: freezed == checklistUnderlineBody ? _self.checklistUnderlineBody : checklistUnderlineBody // ignore: cast_nullable_to_non_nullable
as bool?,checklistItalicBody: freezed == checklistItalicBody ? _self.checklistItalicBody : checklistItalicBody // ignore: cast_nullable_to_non_nullable
as bool?,checklistBoldBody: freezed == checklistBoldBody ? _self.checklistBoldBody : checklistBoldBody // ignore: cast_nullable_to_non_nullable
as bool?,breakAnswers: freezed == breakAnswers ? _self.breakAnswers : breakAnswers // ignore: cast_nullable_to_non_nullable
as bool?,titleMask: freezed == titleMask ? _self.titleMask : titleMask // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,checklistCategoryId: freezed == checklistCategoryId ? _self.checklistCategoryId : checklistCategoryId // ignore: cast_nullable_to_non_nullable
as String?,appGroupId: freezed == appGroupId ? _self.appGroupId : appGroupId // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,checklistCategoryName: freezed == checklistCategoryName ? _self.checklistCategoryName : checklistCategoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
as String?,isObject: freezed == isObject ? _self.isObject : isObject // ignore: cast_nullable_to_non_nullable
as bool?,hideEmptySection: freezed == hideEmptySection ? _self.hideEmptySection : hideEmptySection // ignore: cast_nullable_to_non_nullable
as bool?,isLinked: freezed == isLinked ? _self.isLinked : isLinked // ignore: cast_nullable_to_non_nullable
as bool?,formFieldCreatedBy: freezed == formFieldCreatedBy ? _self.formFieldCreatedBy : formFieldCreatedBy // ignore: cast_nullable_to_non_nullable
as String?,formFieldCreatedById: freezed == formFieldCreatedById ? _self.formFieldCreatedById : formFieldCreatedById // ignore: cast_nullable_to_non_nullable
as String?,formFieldCreated: freezed == formFieldCreated ? _self.formFieldCreated : formFieldCreated // ignore: cast_nullable_to_non_nullable
as String?,formFieldCreatedId: freezed == formFieldCreatedId ? _self.formFieldCreatedId : formFieldCreatedId // ignore: cast_nullable_to_non_nullable
as String?,formFieldName: freezed == formFieldName ? _self.formFieldName : formFieldName // ignore: cast_nullable_to_non_nullable
as String?,formFieldNameId: freezed == formFieldNameId ? _self.formFieldNameId : formFieldNameId // ignore: cast_nullable_to_non_nullable
as String?,hasTemplate: freezed == hasTemplate ? _self.hasTemplate : hasTemplate // ignore: cast_nullable_to_non_nullable
as bool?,forwardBody: freezed == forwardBody ? _self.forwardBody : forwardBody // ignore: cast_nullable_to_non_nullable
as String?,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<ChecklistSectionDto>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? lastUpdated,  String? dateCreated,  int? standard, @JsonKey(name: 'commonwrite')  bool? commonWrite, @JsonKey(name: 'istemp')  bool? isTemp,  bool? deleted, @JsonKey(name: 'editright')  bool? editRight, @JsonKey(name: 'fontstyle')  String? fontStyle, @JsonKey(name: 'fontsize')  double? fontSize,  String? borders, @JsonKey(name: 'outputformat')  String? outputFormat, @JsonKey(name: 'preremarks')  bool? preRemarks,  bool? appendix, @JsonKey(name: 'pagebreak')  bool? pageBreak, @JsonKey(name: 'prodbycheckit')  bool? producedByCheckit, @JsonKey(name: 'versionnumber')  String? versionNumber, @JsonKey(name: 'borderwidth')  double? borderWidth, @JsonKey(name: 'funderlinehead')  bool? fieldUnderlineHeader, @JsonKey(name: 'fitalichead')  bool? fieldItalicHeader, @JsonKey(name: 'fboldhead')  bool? fieldBoldHeader, @JsonKey(name: 'funderlinebody')  bool? fieldUnderlineBody, @JsonKey(name: 'fitalicbody')  bool? fieldItalicBody, @JsonKey(name: 'fboldbody')  bool? fieldBoldBody, @JsonKey(name: 'cunderlinehead')  bool? checklistUnderlineHeader, @JsonKey(name: 'citalichead')  bool? checklistItalicHeader, @JsonKey(name: 'cboldhead')  bool? checklistBoldHeader, @JsonKey(name: 'cunderlinebody')  bool? checklistUnderlineBody, @JsonKey(name: 'citalicbody')  bool? checklistItalicBody, @JsonKey(name: 'cboldbody')  bool? checklistBoldBody,  bool? breakAnswers, @JsonKey(name: 'titlemask')  String? titleMask,  String? companyId, @JsonKey(name: 'checklistcategoryId')  String? checklistCategoryId, @JsonKey(name: 'appgroupId')  String? appGroupId,  String? companyName, @JsonKey(name: 'checklistcategoryName')  String? checklistCategoryName, @JsonKey(name: 'appgroupName')  String? appGroupName, @JsonKey(name: 'isobject')  bool? isObject, @JsonKey(name: 'hideemptysection')  bool? hideEmptySection, @JsonKey(name: 'islinked')  bool? isLinked, @JsonKey(name: 'formfieldCreatedby')  String? formFieldCreatedBy, @JsonKey(name: 'formfieldCreatedbyId')  String? formFieldCreatedById, @JsonKey(name: 'formfieldCreated')  String? formFieldCreated, @JsonKey(name: 'formfieldCreatedId')  String? formFieldCreatedId, @JsonKey(name: 'formfieldName')  String? formFieldName, @JsonKey(name: 'formfieldNameId')  String? formFieldNameId, @JsonKey(name: 'hastemplate')  bool? hasTemplate, @JsonKey(name: 'fforwardbody')  String? forwardBody,  List<ChecklistSectionDto> sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistDetailsDto() when $default != null:
return $default(_that.id,_that.name,_that.lastUpdated,_that.dateCreated,_that.standard,_that.commonWrite,_that.isTemp,_that.deleted,_that.editRight,_that.fontStyle,_that.fontSize,_that.borders,_that.outputFormat,_that.preRemarks,_that.appendix,_that.pageBreak,_that.producedByCheckit,_that.versionNumber,_that.borderWidth,_that.fieldUnderlineHeader,_that.fieldItalicHeader,_that.fieldBoldHeader,_that.fieldUnderlineBody,_that.fieldItalicBody,_that.fieldBoldBody,_that.checklistUnderlineHeader,_that.checklistItalicHeader,_that.checklistBoldHeader,_that.checklistUnderlineBody,_that.checklistItalicBody,_that.checklistBoldBody,_that.breakAnswers,_that.titleMask,_that.companyId,_that.checklistCategoryId,_that.appGroupId,_that.companyName,_that.checklistCategoryName,_that.appGroupName,_that.isObject,_that.hideEmptySection,_that.isLinked,_that.formFieldCreatedBy,_that.formFieldCreatedById,_that.formFieldCreated,_that.formFieldCreatedId,_that.formFieldName,_that.formFieldNameId,_that.hasTemplate,_that.forwardBody,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? lastUpdated,  String? dateCreated,  int? standard, @JsonKey(name: 'commonwrite')  bool? commonWrite, @JsonKey(name: 'istemp')  bool? isTemp,  bool? deleted, @JsonKey(name: 'editright')  bool? editRight, @JsonKey(name: 'fontstyle')  String? fontStyle, @JsonKey(name: 'fontsize')  double? fontSize,  String? borders, @JsonKey(name: 'outputformat')  String? outputFormat, @JsonKey(name: 'preremarks')  bool? preRemarks,  bool? appendix, @JsonKey(name: 'pagebreak')  bool? pageBreak, @JsonKey(name: 'prodbycheckit')  bool? producedByCheckit, @JsonKey(name: 'versionnumber')  String? versionNumber, @JsonKey(name: 'borderwidth')  double? borderWidth, @JsonKey(name: 'funderlinehead')  bool? fieldUnderlineHeader, @JsonKey(name: 'fitalichead')  bool? fieldItalicHeader, @JsonKey(name: 'fboldhead')  bool? fieldBoldHeader, @JsonKey(name: 'funderlinebody')  bool? fieldUnderlineBody, @JsonKey(name: 'fitalicbody')  bool? fieldItalicBody, @JsonKey(name: 'fboldbody')  bool? fieldBoldBody, @JsonKey(name: 'cunderlinehead')  bool? checklistUnderlineHeader, @JsonKey(name: 'citalichead')  bool? checklistItalicHeader, @JsonKey(name: 'cboldhead')  bool? checklistBoldHeader, @JsonKey(name: 'cunderlinebody')  bool? checklistUnderlineBody, @JsonKey(name: 'citalicbody')  bool? checklistItalicBody, @JsonKey(name: 'cboldbody')  bool? checklistBoldBody,  bool? breakAnswers, @JsonKey(name: 'titlemask')  String? titleMask,  String? companyId, @JsonKey(name: 'checklistcategoryId')  String? checklistCategoryId, @JsonKey(name: 'appgroupId')  String? appGroupId,  String? companyName, @JsonKey(name: 'checklistcategoryName')  String? checklistCategoryName, @JsonKey(name: 'appgroupName')  String? appGroupName, @JsonKey(name: 'isobject')  bool? isObject, @JsonKey(name: 'hideemptysection')  bool? hideEmptySection, @JsonKey(name: 'islinked')  bool? isLinked, @JsonKey(name: 'formfieldCreatedby')  String? formFieldCreatedBy, @JsonKey(name: 'formfieldCreatedbyId')  String? formFieldCreatedById, @JsonKey(name: 'formfieldCreated')  String? formFieldCreated, @JsonKey(name: 'formfieldCreatedId')  String? formFieldCreatedId, @JsonKey(name: 'formfieldName')  String? formFieldName, @JsonKey(name: 'formfieldNameId')  String? formFieldNameId, @JsonKey(name: 'hastemplate')  bool? hasTemplate, @JsonKey(name: 'fforwardbody')  String? forwardBody,  List<ChecklistSectionDto> sections)  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetailsDto():
return $default(_that.id,_that.name,_that.lastUpdated,_that.dateCreated,_that.standard,_that.commonWrite,_that.isTemp,_that.deleted,_that.editRight,_that.fontStyle,_that.fontSize,_that.borders,_that.outputFormat,_that.preRemarks,_that.appendix,_that.pageBreak,_that.producedByCheckit,_that.versionNumber,_that.borderWidth,_that.fieldUnderlineHeader,_that.fieldItalicHeader,_that.fieldBoldHeader,_that.fieldUnderlineBody,_that.fieldItalicBody,_that.fieldBoldBody,_that.checklistUnderlineHeader,_that.checklistItalicHeader,_that.checklistBoldHeader,_that.checklistUnderlineBody,_that.checklistItalicBody,_that.checklistBoldBody,_that.breakAnswers,_that.titleMask,_that.companyId,_that.checklistCategoryId,_that.appGroupId,_that.companyName,_that.checklistCategoryName,_that.appGroupName,_that.isObject,_that.hideEmptySection,_that.isLinked,_that.formFieldCreatedBy,_that.formFieldCreatedById,_that.formFieldCreated,_that.formFieldCreatedId,_that.formFieldName,_that.formFieldNameId,_that.hasTemplate,_that.forwardBody,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? lastUpdated,  String? dateCreated,  int? standard, @JsonKey(name: 'commonwrite')  bool? commonWrite, @JsonKey(name: 'istemp')  bool? isTemp,  bool? deleted, @JsonKey(name: 'editright')  bool? editRight, @JsonKey(name: 'fontstyle')  String? fontStyle, @JsonKey(name: 'fontsize')  double? fontSize,  String? borders, @JsonKey(name: 'outputformat')  String? outputFormat, @JsonKey(name: 'preremarks')  bool? preRemarks,  bool? appendix, @JsonKey(name: 'pagebreak')  bool? pageBreak, @JsonKey(name: 'prodbycheckit')  bool? producedByCheckit, @JsonKey(name: 'versionnumber')  String? versionNumber, @JsonKey(name: 'borderwidth')  double? borderWidth, @JsonKey(name: 'funderlinehead')  bool? fieldUnderlineHeader, @JsonKey(name: 'fitalichead')  bool? fieldItalicHeader, @JsonKey(name: 'fboldhead')  bool? fieldBoldHeader, @JsonKey(name: 'funderlinebody')  bool? fieldUnderlineBody, @JsonKey(name: 'fitalicbody')  bool? fieldItalicBody, @JsonKey(name: 'fboldbody')  bool? fieldBoldBody, @JsonKey(name: 'cunderlinehead')  bool? checklistUnderlineHeader, @JsonKey(name: 'citalichead')  bool? checklistItalicHeader, @JsonKey(name: 'cboldhead')  bool? checklistBoldHeader, @JsonKey(name: 'cunderlinebody')  bool? checklistUnderlineBody, @JsonKey(name: 'citalicbody')  bool? checklistItalicBody, @JsonKey(name: 'cboldbody')  bool? checklistBoldBody,  bool? breakAnswers, @JsonKey(name: 'titlemask')  String? titleMask,  String? companyId, @JsonKey(name: 'checklistcategoryId')  String? checklistCategoryId, @JsonKey(name: 'appgroupId')  String? appGroupId,  String? companyName, @JsonKey(name: 'checklistcategoryName')  String? checklistCategoryName, @JsonKey(name: 'appgroupName')  String? appGroupName, @JsonKey(name: 'isobject')  bool? isObject, @JsonKey(name: 'hideemptysection')  bool? hideEmptySection, @JsonKey(name: 'islinked')  bool? isLinked, @JsonKey(name: 'formfieldCreatedby')  String? formFieldCreatedBy, @JsonKey(name: 'formfieldCreatedbyId')  String? formFieldCreatedById, @JsonKey(name: 'formfieldCreated')  String? formFieldCreated, @JsonKey(name: 'formfieldCreatedId')  String? formFieldCreatedId, @JsonKey(name: 'formfieldName')  String? formFieldName, @JsonKey(name: 'formfieldNameId')  String? formFieldNameId, @JsonKey(name: 'hastemplate')  bool? hasTemplate, @JsonKey(name: 'fforwardbody')  String? forwardBody,  List<ChecklistSectionDto> sections)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetailsDto() when $default != null:
return $default(_that.id,_that.name,_that.lastUpdated,_that.dateCreated,_that.standard,_that.commonWrite,_that.isTemp,_that.deleted,_that.editRight,_that.fontStyle,_that.fontSize,_that.borders,_that.outputFormat,_that.preRemarks,_that.appendix,_that.pageBreak,_that.producedByCheckit,_that.versionNumber,_that.borderWidth,_that.fieldUnderlineHeader,_that.fieldItalicHeader,_that.fieldBoldHeader,_that.fieldUnderlineBody,_that.fieldItalicBody,_that.fieldBoldBody,_that.checklistUnderlineHeader,_that.checklistItalicHeader,_that.checklistBoldHeader,_that.checklistUnderlineBody,_that.checklistItalicBody,_that.checklistBoldBody,_that.breakAnswers,_that.titleMask,_that.companyId,_that.checklistCategoryId,_that.appGroupId,_that.companyName,_that.checklistCategoryName,_that.appGroupName,_that.isObject,_that.hideEmptySection,_that.isLinked,_that.formFieldCreatedBy,_that.formFieldCreatedById,_that.formFieldCreated,_that.formFieldCreatedId,_that.formFieldName,_that.formFieldNameId,_that.hasTemplate,_that.forwardBody,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistDetailsDto implements ChecklistDetailsDto {
  const _ChecklistDetailsDto({this.id, this.name, this.lastUpdated, this.dateCreated, this.standard, @JsonKey(name: 'commonwrite') this.commonWrite, @JsonKey(name: 'istemp') this.isTemp, this.deleted, @JsonKey(name: 'editright') this.editRight, @JsonKey(name: 'fontstyle') this.fontStyle, @JsonKey(name: 'fontsize') this.fontSize, this.borders, @JsonKey(name: 'outputformat') this.outputFormat, @JsonKey(name: 'preremarks') this.preRemarks, this.appendix, @JsonKey(name: 'pagebreak') this.pageBreak, @JsonKey(name: 'prodbycheckit') this.producedByCheckit, @JsonKey(name: 'versionnumber') this.versionNumber, @JsonKey(name: 'borderwidth') this.borderWidth, @JsonKey(name: 'funderlinehead') this.fieldUnderlineHeader, @JsonKey(name: 'fitalichead') this.fieldItalicHeader, @JsonKey(name: 'fboldhead') this.fieldBoldHeader, @JsonKey(name: 'funderlinebody') this.fieldUnderlineBody, @JsonKey(name: 'fitalicbody') this.fieldItalicBody, @JsonKey(name: 'fboldbody') this.fieldBoldBody, @JsonKey(name: 'cunderlinehead') this.checklistUnderlineHeader, @JsonKey(name: 'citalichead') this.checklistItalicHeader, @JsonKey(name: 'cboldhead') this.checklistBoldHeader, @JsonKey(name: 'cunderlinebody') this.checklistUnderlineBody, @JsonKey(name: 'citalicbody') this.checklistItalicBody, @JsonKey(name: 'cboldbody') this.checklistBoldBody, this.breakAnswers, @JsonKey(name: 'titlemask') this.titleMask, this.companyId, @JsonKey(name: 'checklistcategoryId') this.checklistCategoryId, @JsonKey(name: 'appgroupId') this.appGroupId, this.companyName, @JsonKey(name: 'checklistcategoryName') this.checklistCategoryName, @JsonKey(name: 'appgroupName') this.appGroupName, @JsonKey(name: 'isobject') this.isObject, @JsonKey(name: 'hideemptysection') this.hideEmptySection, @JsonKey(name: 'islinked') this.isLinked, @JsonKey(name: 'formfieldCreatedby') this.formFieldCreatedBy, @JsonKey(name: 'formfieldCreatedbyId') this.formFieldCreatedById, @JsonKey(name: 'formfieldCreated') this.formFieldCreated, @JsonKey(name: 'formfieldCreatedId') this.formFieldCreatedId, @JsonKey(name: 'formfieldName') this.formFieldName, @JsonKey(name: 'formfieldNameId') this.formFieldNameId, @JsonKey(name: 'hastemplate') this.hasTemplate, @JsonKey(name: 'fforwardbody') this.forwardBody, final  List<ChecklistSectionDto> sections = const <ChecklistSectionDto>[]}): _sections = sections;
  factory _ChecklistDetailsDto.fromJson(Map<String, dynamic> json) => _$ChecklistDetailsDtoFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? lastUpdated;
@override final  String? dateCreated;
@override final  int? standard;
@override@JsonKey(name: 'commonwrite') final  bool? commonWrite;
@override@JsonKey(name: 'istemp') final  bool? isTemp;
@override final  bool? deleted;
@override@JsonKey(name: 'editright') final  bool? editRight;
@override@JsonKey(name: 'fontstyle') final  String? fontStyle;
@override@JsonKey(name: 'fontsize') final  double? fontSize;
@override final  String? borders;
@override@JsonKey(name: 'outputformat') final  String? outputFormat;
@override@JsonKey(name: 'preremarks') final  bool? preRemarks;
@override final  bool? appendix;
@override@JsonKey(name: 'pagebreak') final  bool? pageBreak;
@override@JsonKey(name: 'prodbycheckit') final  bool? producedByCheckit;
@override@JsonKey(name: 'versionnumber') final  String? versionNumber;
@override@JsonKey(name: 'borderwidth') final  double? borderWidth;
@override@JsonKey(name: 'funderlinehead') final  bool? fieldUnderlineHeader;
@override@JsonKey(name: 'fitalichead') final  bool? fieldItalicHeader;
@override@JsonKey(name: 'fboldhead') final  bool? fieldBoldHeader;
@override@JsonKey(name: 'funderlinebody') final  bool? fieldUnderlineBody;
@override@JsonKey(name: 'fitalicbody') final  bool? fieldItalicBody;
@override@JsonKey(name: 'fboldbody') final  bool? fieldBoldBody;
@override@JsonKey(name: 'cunderlinehead') final  bool? checklistUnderlineHeader;
@override@JsonKey(name: 'citalichead') final  bool? checklistItalicHeader;
@override@JsonKey(name: 'cboldhead') final  bool? checklistBoldHeader;
@override@JsonKey(name: 'cunderlinebody') final  bool? checklistUnderlineBody;
@override@JsonKey(name: 'citalicbody') final  bool? checklistItalicBody;
@override@JsonKey(name: 'cboldbody') final  bool? checklistBoldBody;
@override final  bool? breakAnswers;
@override@JsonKey(name: 'titlemask') final  String? titleMask;
@override final  String? companyId;
@override@JsonKey(name: 'checklistcategoryId') final  String? checklistCategoryId;
@override@JsonKey(name: 'appgroupId') final  String? appGroupId;
@override final  String? companyName;
@override@JsonKey(name: 'checklistcategoryName') final  String? checklistCategoryName;
@override@JsonKey(name: 'appgroupName') final  String? appGroupName;
@override@JsonKey(name: 'isobject') final  bool? isObject;
@override@JsonKey(name: 'hideemptysection') final  bool? hideEmptySection;
@override@JsonKey(name: 'islinked') final  bool? isLinked;
@override@JsonKey(name: 'formfieldCreatedby') final  String? formFieldCreatedBy;
@override@JsonKey(name: 'formfieldCreatedbyId') final  String? formFieldCreatedById;
@override@JsonKey(name: 'formfieldCreated') final  String? formFieldCreated;
@override@JsonKey(name: 'formfieldCreatedId') final  String? formFieldCreatedId;
@override@JsonKey(name: 'formfieldName') final  String? formFieldName;
@override@JsonKey(name: 'formfieldNameId') final  String? formFieldNameId;
@override@JsonKey(name: 'hastemplate') final  bool? hasTemplate;
@override@JsonKey(name: 'fforwardbody') final  String? forwardBody;
 final  List<ChecklistSectionDto> _sections;
@override@JsonKey() List<ChecklistSectionDto> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistDetailsDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.standard, standard) || other.standard == standard)&&(identical(other.commonWrite, commonWrite) || other.commonWrite == commonWrite)&&(identical(other.isTemp, isTemp) || other.isTemp == isTemp)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.editRight, editRight) || other.editRight == editRight)&&(identical(other.fontStyle, fontStyle) || other.fontStyle == fontStyle)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&(identical(other.borders, borders) || other.borders == borders)&&(identical(other.outputFormat, outputFormat) || other.outputFormat == outputFormat)&&(identical(other.preRemarks, preRemarks) || other.preRemarks == preRemarks)&&(identical(other.appendix, appendix) || other.appendix == appendix)&&(identical(other.pageBreak, pageBreak) || other.pageBreak == pageBreak)&&(identical(other.producedByCheckit, producedByCheckit) || other.producedByCheckit == producedByCheckit)&&(identical(other.versionNumber, versionNumber) || other.versionNumber == versionNumber)&&(identical(other.borderWidth, borderWidth) || other.borderWidth == borderWidth)&&(identical(other.fieldUnderlineHeader, fieldUnderlineHeader) || other.fieldUnderlineHeader == fieldUnderlineHeader)&&(identical(other.fieldItalicHeader, fieldItalicHeader) || other.fieldItalicHeader == fieldItalicHeader)&&(identical(other.fieldBoldHeader, fieldBoldHeader) || other.fieldBoldHeader == fieldBoldHeader)&&(identical(other.fieldUnderlineBody, fieldUnderlineBody) || other.fieldUnderlineBody == fieldUnderlineBody)&&(identical(other.fieldItalicBody, fieldItalicBody) || other.fieldItalicBody == fieldItalicBody)&&(identical(other.fieldBoldBody, fieldBoldBody) || other.fieldBoldBody == fieldBoldBody)&&(identical(other.checklistUnderlineHeader, checklistUnderlineHeader) || other.checklistUnderlineHeader == checklistUnderlineHeader)&&(identical(other.checklistItalicHeader, checklistItalicHeader) || other.checklistItalicHeader == checklistItalicHeader)&&(identical(other.checklistBoldHeader, checklistBoldHeader) || other.checklistBoldHeader == checklistBoldHeader)&&(identical(other.checklistUnderlineBody, checklistUnderlineBody) || other.checklistUnderlineBody == checklistUnderlineBody)&&(identical(other.checklistItalicBody, checklistItalicBody) || other.checklistItalicBody == checklistItalicBody)&&(identical(other.checklistBoldBody, checklistBoldBody) || other.checklistBoldBody == checklistBoldBody)&&(identical(other.breakAnswers, breakAnswers) || other.breakAnswers == breakAnswers)&&(identical(other.titleMask, titleMask) || other.titleMask == titleMask)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.checklistCategoryId, checklistCategoryId) || other.checklistCategoryId == checklistCategoryId)&&(identical(other.appGroupId, appGroupId) || other.appGroupId == appGroupId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.checklistCategoryName, checklistCategoryName) || other.checklistCategoryName == checklistCategoryName)&&(identical(other.appGroupName, appGroupName) || other.appGroupName == appGroupName)&&(identical(other.isObject, isObject) || other.isObject == isObject)&&(identical(other.hideEmptySection, hideEmptySection) || other.hideEmptySection == hideEmptySection)&&(identical(other.isLinked, isLinked) || other.isLinked == isLinked)&&(identical(other.formFieldCreatedBy, formFieldCreatedBy) || other.formFieldCreatedBy == formFieldCreatedBy)&&(identical(other.formFieldCreatedById, formFieldCreatedById) || other.formFieldCreatedById == formFieldCreatedById)&&(identical(other.formFieldCreated, formFieldCreated) || other.formFieldCreated == formFieldCreated)&&(identical(other.formFieldCreatedId, formFieldCreatedId) || other.formFieldCreatedId == formFieldCreatedId)&&(identical(other.formFieldName, formFieldName) || other.formFieldName == formFieldName)&&(identical(other.formFieldNameId, formFieldNameId) || other.formFieldNameId == formFieldNameId)&&(identical(other.hasTemplate, hasTemplate) || other.hasTemplate == hasTemplate)&&(identical(other.forwardBody, forwardBody) || other.forwardBody == forwardBody)&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,lastUpdated,dateCreated,standard,commonWrite,isTemp,deleted,editRight,fontStyle,fontSize,borders,outputFormat,preRemarks,appendix,pageBreak,producedByCheckit,versionNumber,borderWidth,fieldUnderlineHeader,fieldItalicHeader,fieldBoldHeader,fieldUnderlineBody,fieldItalicBody,fieldBoldBody,checklistUnderlineHeader,checklistItalicHeader,checklistBoldHeader,checklistUnderlineBody,checklistItalicBody,checklistBoldBody,breakAnswers,titleMask,companyId,checklistCategoryId,appGroupId,companyName,checklistCategoryName,appGroupName,isObject,hideEmptySection,isLinked,formFieldCreatedBy,formFieldCreatedById,formFieldCreated,formFieldCreatedId,formFieldName,formFieldNameId,hasTemplate,forwardBody,const DeepCollectionEquality().hash(_sections)]);

@override
String toString() {
  return 'ChecklistDetailsDto(id: $id, name: $name, lastUpdated: $lastUpdated, dateCreated: $dateCreated, standard: $standard, commonWrite: $commonWrite, isTemp: $isTemp, deleted: $deleted, editRight: $editRight, fontStyle: $fontStyle, fontSize: $fontSize, borders: $borders, outputFormat: $outputFormat, preRemarks: $preRemarks, appendix: $appendix, pageBreak: $pageBreak, producedByCheckit: $producedByCheckit, versionNumber: $versionNumber, borderWidth: $borderWidth, fieldUnderlineHeader: $fieldUnderlineHeader, fieldItalicHeader: $fieldItalicHeader, fieldBoldHeader: $fieldBoldHeader, fieldUnderlineBody: $fieldUnderlineBody, fieldItalicBody: $fieldItalicBody, fieldBoldBody: $fieldBoldBody, checklistUnderlineHeader: $checklistUnderlineHeader, checklistItalicHeader: $checklistItalicHeader, checklistBoldHeader: $checklistBoldHeader, checklistUnderlineBody: $checklistUnderlineBody, checklistItalicBody: $checklistItalicBody, checklistBoldBody: $checklistBoldBody, breakAnswers: $breakAnswers, titleMask: $titleMask, companyId: $companyId, checklistCategoryId: $checklistCategoryId, appGroupId: $appGroupId, companyName: $companyName, checklistCategoryName: $checklistCategoryName, appGroupName: $appGroupName, isObject: $isObject, hideEmptySection: $hideEmptySection, isLinked: $isLinked, formFieldCreatedBy: $formFieldCreatedBy, formFieldCreatedById: $formFieldCreatedById, formFieldCreated: $formFieldCreated, formFieldCreatedId: $formFieldCreatedId, formFieldName: $formFieldName, formFieldNameId: $formFieldNameId, hasTemplate: $hasTemplate, forwardBody: $forwardBody, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$ChecklistDetailsDtoCopyWith<$Res> implements $ChecklistDetailsDtoCopyWith<$Res> {
  factory _$ChecklistDetailsDtoCopyWith(_ChecklistDetailsDto value, $Res Function(_ChecklistDetailsDto) _then) = __$ChecklistDetailsDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? lastUpdated, String? dateCreated, int? standard,@JsonKey(name: 'commonwrite') bool? commonWrite,@JsonKey(name: 'istemp') bool? isTemp, bool? deleted,@JsonKey(name: 'editright') bool? editRight,@JsonKey(name: 'fontstyle') String? fontStyle,@JsonKey(name: 'fontsize') double? fontSize, String? borders,@JsonKey(name: 'outputformat') String? outputFormat,@JsonKey(name: 'preremarks') bool? preRemarks, bool? appendix,@JsonKey(name: 'pagebreak') bool? pageBreak,@JsonKey(name: 'prodbycheckit') bool? producedByCheckit,@JsonKey(name: 'versionnumber') String? versionNumber,@JsonKey(name: 'borderwidth') double? borderWidth,@JsonKey(name: 'funderlinehead') bool? fieldUnderlineHeader,@JsonKey(name: 'fitalichead') bool? fieldItalicHeader,@JsonKey(name: 'fboldhead') bool? fieldBoldHeader,@JsonKey(name: 'funderlinebody') bool? fieldUnderlineBody,@JsonKey(name: 'fitalicbody') bool? fieldItalicBody,@JsonKey(name: 'fboldbody') bool? fieldBoldBody,@JsonKey(name: 'cunderlinehead') bool? checklistUnderlineHeader,@JsonKey(name: 'citalichead') bool? checklistItalicHeader,@JsonKey(name: 'cboldhead') bool? checklistBoldHeader,@JsonKey(name: 'cunderlinebody') bool? checklistUnderlineBody,@JsonKey(name: 'citalicbody') bool? checklistItalicBody,@JsonKey(name: 'cboldbody') bool? checklistBoldBody, bool? breakAnswers,@JsonKey(name: 'titlemask') String? titleMask, String? companyId,@JsonKey(name: 'checklistcategoryId') String? checklistCategoryId,@JsonKey(name: 'appgroupId') String? appGroupId, String? companyName,@JsonKey(name: 'checklistcategoryName') String? checklistCategoryName,@JsonKey(name: 'appgroupName') String? appGroupName,@JsonKey(name: 'isobject') bool? isObject,@JsonKey(name: 'hideemptysection') bool? hideEmptySection,@JsonKey(name: 'islinked') bool? isLinked,@JsonKey(name: 'formfieldCreatedby') String? formFieldCreatedBy,@JsonKey(name: 'formfieldCreatedbyId') String? formFieldCreatedById,@JsonKey(name: 'formfieldCreated') String? formFieldCreated,@JsonKey(name: 'formfieldCreatedId') String? formFieldCreatedId,@JsonKey(name: 'formfieldName') String? formFieldName,@JsonKey(name: 'formfieldNameId') String? formFieldNameId,@JsonKey(name: 'hastemplate') bool? hasTemplate,@JsonKey(name: 'fforwardbody') String? forwardBody, List<ChecklistSectionDto> sections
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? lastUpdated = freezed,Object? dateCreated = freezed,Object? standard = freezed,Object? commonWrite = freezed,Object? isTemp = freezed,Object? deleted = freezed,Object? editRight = freezed,Object? fontStyle = freezed,Object? fontSize = freezed,Object? borders = freezed,Object? outputFormat = freezed,Object? preRemarks = freezed,Object? appendix = freezed,Object? pageBreak = freezed,Object? producedByCheckit = freezed,Object? versionNumber = freezed,Object? borderWidth = freezed,Object? fieldUnderlineHeader = freezed,Object? fieldItalicHeader = freezed,Object? fieldBoldHeader = freezed,Object? fieldUnderlineBody = freezed,Object? fieldItalicBody = freezed,Object? fieldBoldBody = freezed,Object? checklistUnderlineHeader = freezed,Object? checklistItalicHeader = freezed,Object? checklistBoldHeader = freezed,Object? checklistUnderlineBody = freezed,Object? checklistItalicBody = freezed,Object? checklistBoldBody = freezed,Object? breakAnswers = freezed,Object? titleMask = freezed,Object? companyId = freezed,Object? checklistCategoryId = freezed,Object? appGroupId = freezed,Object? companyName = freezed,Object? checklistCategoryName = freezed,Object? appGroupName = freezed,Object? isObject = freezed,Object? hideEmptySection = freezed,Object? isLinked = freezed,Object? formFieldCreatedBy = freezed,Object? formFieldCreatedById = freezed,Object? formFieldCreated = freezed,Object? formFieldCreatedId = freezed,Object? formFieldName = freezed,Object? formFieldNameId = freezed,Object? hasTemplate = freezed,Object? forwardBody = freezed,Object? sections = null,}) {
  return _then(_ChecklistDetailsDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,standard: freezed == standard ? _self.standard : standard // ignore: cast_nullable_to_non_nullable
as int?,commonWrite: freezed == commonWrite ? _self.commonWrite : commonWrite // ignore: cast_nullable_to_non_nullable
as bool?,isTemp: freezed == isTemp ? _self.isTemp : isTemp // ignore: cast_nullable_to_non_nullable
as bool?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,editRight: freezed == editRight ? _self.editRight : editRight // ignore: cast_nullable_to_non_nullable
as bool?,fontStyle: freezed == fontStyle ? _self.fontStyle : fontStyle // ignore: cast_nullable_to_non_nullable
as String?,fontSize: freezed == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double?,borders: freezed == borders ? _self.borders : borders // ignore: cast_nullable_to_non_nullable
as String?,outputFormat: freezed == outputFormat ? _self.outputFormat : outputFormat // ignore: cast_nullable_to_non_nullable
as String?,preRemarks: freezed == preRemarks ? _self.preRemarks : preRemarks // ignore: cast_nullable_to_non_nullable
as bool?,appendix: freezed == appendix ? _self.appendix : appendix // ignore: cast_nullable_to_non_nullable
as bool?,pageBreak: freezed == pageBreak ? _self.pageBreak : pageBreak // ignore: cast_nullable_to_non_nullable
as bool?,producedByCheckit: freezed == producedByCheckit ? _self.producedByCheckit : producedByCheckit // ignore: cast_nullable_to_non_nullable
as bool?,versionNumber: freezed == versionNumber ? _self.versionNumber : versionNumber // ignore: cast_nullable_to_non_nullable
as String?,borderWidth: freezed == borderWidth ? _self.borderWidth : borderWidth // ignore: cast_nullable_to_non_nullable
as double?,fieldUnderlineHeader: freezed == fieldUnderlineHeader ? _self.fieldUnderlineHeader : fieldUnderlineHeader // ignore: cast_nullable_to_non_nullable
as bool?,fieldItalicHeader: freezed == fieldItalicHeader ? _self.fieldItalicHeader : fieldItalicHeader // ignore: cast_nullable_to_non_nullable
as bool?,fieldBoldHeader: freezed == fieldBoldHeader ? _self.fieldBoldHeader : fieldBoldHeader // ignore: cast_nullable_to_non_nullable
as bool?,fieldUnderlineBody: freezed == fieldUnderlineBody ? _self.fieldUnderlineBody : fieldUnderlineBody // ignore: cast_nullable_to_non_nullable
as bool?,fieldItalicBody: freezed == fieldItalicBody ? _self.fieldItalicBody : fieldItalicBody // ignore: cast_nullable_to_non_nullable
as bool?,fieldBoldBody: freezed == fieldBoldBody ? _self.fieldBoldBody : fieldBoldBody // ignore: cast_nullable_to_non_nullable
as bool?,checklistUnderlineHeader: freezed == checklistUnderlineHeader ? _self.checklistUnderlineHeader : checklistUnderlineHeader // ignore: cast_nullable_to_non_nullable
as bool?,checklistItalicHeader: freezed == checklistItalicHeader ? _self.checklistItalicHeader : checklistItalicHeader // ignore: cast_nullable_to_non_nullable
as bool?,checklistBoldHeader: freezed == checklistBoldHeader ? _self.checklistBoldHeader : checklistBoldHeader // ignore: cast_nullable_to_non_nullable
as bool?,checklistUnderlineBody: freezed == checklistUnderlineBody ? _self.checklistUnderlineBody : checklistUnderlineBody // ignore: cast_nullable_to_non_nullable
as bool?,checklistItalicBody: freezed == checklistItalicBody ? _self.checklistItalicBody : checklistItalicBody // ignore: cast_nullable_to_non_nullable
as bool?,checklistBoldBody: freezed == checklistBoldBody ? _self.checklistBoldBody : checklistBoldBody // ignore: cast_nullable_to_non_nullable
as bool?,breakAnswers: freezed == breakAnswers ? _self.breakAnswers : breakAnswers // ignore: cast_nullable_to_non_nullable
as bool?,titleMask: freezed == titleMask ? _self.titleMask : titleMask // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,checklistCategoryId: freezed == checklistCategoryId ? _self.checklistCategoryId : checklistCategoryId // ignore: cast_nullable_to_non_nullable
as String?,appGroupId: freezed == appGroupId ? _self.appGroupId : appGroupId // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,checklistCategoryName: freezed == checklistCategoryName ? _self.checklistCategoryName : checklistCategoryName // ignore: cast_nullable_to_non_nullable
as String?,appGroupName: freezed == appGroupName ? _self.appGroupName : appGroupName // ignore: cast_nullable_to_non_nullable
as String?,isObject: freezed == isObject ? _self.isObject : isObject // ignore: cast_nullable_to_non_nullable
as bool?,hideEmptySection: freezed == hideEmptySection ? _self.hideEmptySection : hideEmptySection // ignore: cast_nullable_to_non_nullable
as bool?,isLinked: freezed == isLinked ? _self.isLinked : isLinked // ignore: cast_nullable_to_non_nullable
as bool?,formFieldCreatedBy: freezed == formFieldCreatedBy ? _self.formFieldCreatedBy : formFieldCreatedBy // ignore: cast_nullable_to_non_nullable
as String?,formFieldCreatedById: freezed == formFieldCreatedById ? _self.formFieldCreatedById : formFieldCreatedById // ignore: cast_nullable_to_non_nullable
as String?,formFieldCreated: freezed == formFieldCreated ? _self.formFieldCreated : formFieldCreated // ignore: cast_nullable_to_non_nullable
as String?,formFieldCreatedId: freezed == formFieldCreatedId ? _self.formFieldCreatedId : formFieldCreatedId // ignore: cast_nullable_to_non_nullable
as String?,formFieldName: freezed == formFieldName ? _self.formFieldName : formFieldName // ignore: cast_nullable_to_non_nullable
as String?,formFieldNameId: freezed == formFieldNameId ? _self.formFieldNameId : formFieldNameId // ignore: cast_nullable_to_non_nullable
as String?,hasTemplate: freezed == hasTemplate ? _self.hasTemplate : hasTemplate // ignore: cast_nullable_to_non_nullable
as bool?,forwardBody: freezed == forwardBody ? _self.forwardBody : forwardBody // ignore: cast_nullable_to_non_nullable
as String?,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<ChecklistSectionDto>,
  ));
}


}


/// @nodoc
mixin _$ChecklistSectionDto {

 String? get id; String? get name;@JsonKey(name: 'sortorder') int? get sortOrder; String? get dateCreated; String? get lastUpdated; bool? get deleted;@JsonKey(name: 'istemp') bool? get isTemp; bool? get approval;@JsonKey(name: 'approvestatus') int? get approveStatus;@JsonKey(name: 'myapprove') bool? get myApprove;@JsonKey(name: 'checklistfields') List<ChecklistFieldDto> get fields;
/// Create a copy of ChecklistSectionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistSectionDtoCopyWith<ChecklistSectionDto> get copyWith => _$ChecklistSectionDtoCopyWithImpl<ChecklistSectionDto>(this as ChecklistSectionDto, _$identity);

  /// Serializes this ChecklistSectionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistSectionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.isTemp, isTemp) || other.isTemp == isTemp)&&(identical(other.approval, approval) || other.approval == approval)&&(identical(other.approveStatus, approveStatus) || other.approveStatus == approveStatus)&&(identical(other.myApprove, myApprove) || other.myApprove == myApprove)&&const DeepCollectionEquality().equals(other.fields, fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sortOrder,dateCreated,lastUpdated,deleted,isTemp,approval,approveStatus,myApprove,const DeepCollectionEquality().hash(fields));

@override
String toString() {
  return 'ChecklistSectionDto(id: $id, name: $name, sortOrder: $sortOrder, dateCreated: $dateCreated, lastUpdated: $lastUpdated, deleted: $deleted, isTemp: $isTemp, approval: $approval, approveStatus: $approveStatus, myApprove: $myApprove, fields: $fields)';
}


}

/// @nodoc
abstract mixin class $ChecklistSectionDtoCopyWith<$Res>  {
  factory $ChecklistSectionDtoCopyWith(ChecklistSectionDto value, $Res Function(ChecklistSectionDto) _then) = _$ChecklistSectionDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'sortorder') int? sortOrder, String? dateCreated, String? lastUpdated, bool? deleted,@JsonKey(name: 'istemp') bool? isTemp, bool? approval,@JsonKey(name: 'approvestatus') int? approveStatus,@JsonKey(name: 'myapprove') bool? myApprove,@JsonKey(name: 'checklistfields') List<ChecklistFieldDto> fields
});




}
/// @nodoc
class _$ChecklistSectionDtoCopyWithImpl<$Res>
    implements $ChecklistSectionDtoCopyWith<$Res> {
  _$ChecklistSectionDtoCopyWithImpl(this._self, this._then);

  final ChecklistSectionDto _self;
  final $Res Function(ChecklistSectionDto) _then;

/// Create a copy of ChecklistSectionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? sortOrder = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? deleted = freezed,Object? isTemp = freezed,Object? approval = freezed,Object? approveStatus = freezed,Object? myApprove = freezed,Object? fields = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,isTemp: freezed == isTemp ? _self.isTemp : isTemp // ignore: cast_nullable_to_non_nullable
as bool?,approval: freezed == approval ? _self.approval : approval // ignore: cast_nullable_to_non_nullable
as bool?,approveStatus: freezed == approveStatus ? _self.approveStatus : approveStatus // ignore: cast_nullable_to_non_nullable
as int?,myApprove: freezed == myApprove ? _self.myApprove : myApprove // ignore: cast_nullable_to_non_nullable
as bool?,fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<ChecklistFieldDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistSectionDto].
extension ChecklistSectionDtoPatterns on ChecklistSectionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistSectionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistSectionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistSectionDto value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistSectionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistSectionDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistSectionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'sortorder')  int? sortOrder,  String? dateCreated,  String? lastUpdated,  bool? deleted, @JsonKey(name: 'istemp')  bool? isTemp,  bool? approval, @JsonKey(name: 'approvestatus')  int? approveStatus, @JsonKey(name: 'myapprove')  bool? myApprove, @JsonKey(name: 'checklistfields')  List<ChecklistFieldDto> fields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistSectionDto() when $default != null:
return $default(_that.id,_that.name,_that.sortOrder,_that.dateCreated,_that.lastUpdated,_that.deleted,_that.isTemp,_that.approval,_that.approveStatus,_that.myApprove,_that.fields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'sortorder')  int? sortOrder,  String? dateCreated,  String? lastUpdated,  bool? deleted, @JsonKey(name: 'istemp')  bool? isTemp,  bool? approval, @JsonKey(name: 'approvestatus')  int? approveStatus, @JsonKey(name: 'myapprove')  bool? myApprove, @JsonKey(name: 'checklistfields')  List<ChecklistFieldDto> fields)  $default,) {final _that = this;
switch (_that) {
case _ChecklistSectionDto():
return $default(_that.id,_that.name,_that.sortOrder,_that.dateCreated,_that.lastUpdated,_that.deleted,_that.isTemp,_that.approval,_that.approveStatus,_that.myApprove,_that.fields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name, @JsonKey(name: 'sortorder')  int? sortOrder,  String? dateCreated,  String? lastUpdated,  bool? deleted, @JsonKey(name: 'istemp')  bool? isTemp,  bool? approval, @JsonKey(name: 'approvestatus')  int? approveStatus, @JsonKey(name: 'myapprove')  bool? myApprove, @JsonKey(name: 'checklistfields')  List<ChecklistFieldDto> fields)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistSectionDto() when $default != null:
return $default(_that.id,_that.name,_that.sortOrder,_that.dateCreated,_that.lastUpdated,_that.deleted,_that.isTemp,_that.approval,_that.approveStatus,_that.myApprove,_that.fields);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistSectionDto implements ChecklistSectionDto {
  const _ChecklistSectionDto({this.id, this.name, @JsonKey(name: 'sortorder') this.sortOrder, this.dateCreated, this.lastUpdated, this.deleted, @JsonKey(name: 'istemp') this.isTemp, this.approval, @JsonKey(name: 'approvestatus') this.approveStatus, @JsonKey(name: 'myapprove') this.myApprove, @JsonKey(name: 'checklistfields') final  List<ChecklistFieldDto> fields = const <ChecklistFieldDto>[]}): _fields = fields;
  factory _ChecklistSectionDto.fromJson(Map<String, dynamic> json) => _$ChecklistSectionDtoFromJson(json);

@override final  String? id;
@override final  String? name;
@override@JsonKey(name: 'sortorder') final  int? sortOrder;
@override final  String? dateCreated;
@override final  String? lastUpdated;
@override final  bool? deleted;
@override@JsonKey(name: 'istemp') final  bool? isTemp;
@override final  bool? approval;
@override@JsonKey(name: 'approvestatus') final  int? approveStatus;
@override@JsonKey(name: 'myapprove') final  bool? myApprove;
 final  List<ChecklistFieldDto> _fields;
@override@JsonKey(name: 'checklistfields') List<ChecklistFieldDto> get fields {
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fields);
}


/// Create a copy of ChecklistSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistSectionDtoCopyWith<_ChecklistSectionDto> get copyWith => __$ChecklistSectionDtoCopyWithImpl<_ChecklistSectionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistSectionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistSectionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.isTemp, isTemp) || other.isTemp == isTemp)&&(identical(other.approval, approval) || other.approval == approval)&&(identical(other.approveStatus, approveStatus) || other.approveStatus == approveStatus)&&(identical(other.myApprove, myApprove) || other.myApprove == myApprove)&&const DeepCollectionEquality().equals(other._fields, _fields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,sortOrder,dateCreated,lastUpdated,deleted,isTemp,approval,approveStatus,myApprove,const DeepCollectionEquality().hash(_fields));

@override
String toString() {
  return 'ChecklistSectionDto(id: $id, name: $name, sortOrder: $sortOrder, dateCreated: $dateCreated, lastUpdated: $lastUpdated, deleted: $deleted, isTemp: $isTemp, approval: $approval, approveStatus: $approveStatus, myApprove: $myApprove, fields: $fields)';
}


}

/// @nodoc
abstract mixin class _$ChecklistSectionDtoCopyWith<$Res> implements $ChecklistSectionDtoCopyWith<$Res> {
  factory _$ChecklistSectionDtoCopyWith(_ChecklistSectionDto value, $Res Function(_ChecklistSectionDto) _then) = __$ChecklistSectionDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'sortorder') int? sortOrder, String? dateCreated, String? lastUpdated, bool? deleted,@JsonKey(name: 'istemp') bool? isTemp, bool? approval,@JsonKey(name: 'approvestatus') int? approveStatus,@JsonKey(name: 'myapprove') bool? myApprove,@JsonKey(name: 'checklistfields') List<ChecklistFieldDto> fields
});




}
/// @nodoc
class __$ChecklistSectionDtoCopyWithImpl<$Res>
    implements _$ChecklistSectionDtoCopyWith<$Res> {
  __$ChecklistSectionDtoCopyWithImpl(this._self, this._then);

  final _ChecklistSectionDto _self;
  final $Res Function(_ChecklistSectionDto) _then;

/// Create a copy of ChecklistSectionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? sortOrder = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? deleted = freezed,Object? isTemp = freezed,Object? approval = freezed,Object? approveStatus = freezed,Object? myApprove = freezed,Object? fields = null,}) {
  return _then(_ChecklistSectionDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,isTemp: freezed == isTemp ? _self.isTemp : isTemp // ignore: cast_nullable_to_non_nullable
as bool?,approval: freezed == approval ? _self.approval : approval // ignore: cast_nullable_to_non_nullable
as bool?,approveStatus: freezed == approveStatus ? _self.approveStatus : approveStatus // ignore: cast_nullable_to_non_nullable
as int?,myApprove: freezed == myApprove ? _self.myApprove : myApprove // ignore: cast_nullable_to_non_nullable
as bool?,fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<ChecklistFieldDto>,
  ));
}


}


/// @nodoc
mixin _$ChecklistFieldDto {

 String? get id; String? get name;@JsonKey(name: 'istextarea') bool? get isTextArea;@JsonKey(name: 'extratext') bool? get extraText;@JsonKey(name: 'ismultiple') bool? get isMultiple;@JsonKey(name: 'isdatetime') bool? get isDateTime;@JsonKey(name: 'issignature') bool? get isSignature;@JsonKey(name: 'sortorder') int? get sortOrder;@JsonKey(name: 'isrequired') bool? get isRequired; String? get dateCreated; String? get lastUpdated; bool? get deleted;@JsonKey(name: 'titlefield') bool? get titleField;@JsonKey(name: 'istemp') bool? get isTemp; String? get companyId;@JsonKey(name: 'fieldtypId') String? get fieldTypeId;@JsonKey(name: 'fieldtypname') String? get fieldTypeName;
/// Create a copy of ChecklistFieldDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistFieldDtoCopyWith<ChecklistFieldDto> get copyWith => _$ChecklistFieldDtoCopyWithImpl<ChecklistFieldDto>(this as ChecklistFieldDto, _$identity);

  /// Serializes this ChecklistFieldDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistFieldDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isTextArea, isTextArea) || other.isTextArea == isTextArea)&&(identical(other.extraText, extraText) || other.extraText == extraText)&&(identical(other.isMultiple, isMultiple) || other.isMultiple == isMultiple)&&(identical(other.isDateTime, isDateTime) || other.isDateTime == isDateTime)&&(identical(other.isSignature, isSignature) || other.isSignature == isSignature)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.titleField, titleField) || other.titleField == titleField)&&(identical(other.isTemp, isTemp) || other.isTemp == isTemp)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.fieldTypeId, fieldTypeId) || other.fieldTypeId == fieldTypeId)&&(identical(other.fieldTypeName, fieldTypeName) || other.fieldTypeName == fieldTypeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isTextArea,extraText,isMultiple,isDateTime,isSignature,sortOrder,isRequired,dateCreated,lastUpdated,deleted,titleField,isTemp,companyId,fieldTypeId,fieldTypeName);

@override
String toString() {
  return 'ChecklistFieldDto(id: $id, name: $name, isTextArea: $isTextArea, extraText: $extraText, isMultiple: $isMultiple, isDateTime: $isDateTime, isSignature: $isSignature, sortOrder: $sortOrder, isRequired: $isRequired, dateCreated: $dateCreated, lastUpdated: $lastUpdated, deleted: $deleted, titleField: $titleField, isTemp: $isTemp, companyId: $companyId, fieldTypeId: $fieldTypeId, fieldTypeName: $fieldTypeName)';
}


}

/// @nodoc
abstract mixin class $ChecklistFieldDtoCopyWith<$Res>  {
  factory $ChecklistFieldDtoCopyWith(ChecklistFieldDto value, $Res Function(ChecklistFieldDto) _then) = _$ChecklistFieldDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'istextarea') bool? isTextArea,@JsonKey(name: 'extratext') bool? extraText,@JsonKey(name: 'ismultiple') bool? isMultiple,@JsonKey(name: 'isdatetime') bool? isDateTime,@JsonKey(name: 'issignature') bool? isSignature,@JsonKey(name: 'sortorder') int? sortOrder,@JsonKey(name: 'isrequired') bool? isRequired, String? dateCreated, String? lastUpdated, bool? deleted,@JsonKey(name: 'titlefield') bool? titleField,@JsonKey(name: 'istemp') bool? isTemp, String? companyId,@JsonKey(name: 'fieldtypId') String? fieldTypeId,@JsonKey(name: 'fieldtypname') String? fieldTypeName
});




}
/// @nodoc
class _$ChecklistFieldDtoCopyWithImpl<$Res>
    implements $ChecklistFieldDtoCopyWith<$Res> {
  _$ChecklistFieldDtoCopyWithImpl(this._self, this._then);

  final ChecklistFieldDto _self;
  final $Res Function(ChecklistFieldDto) _then;

/// Create a copy of ChecklistFieldDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? isTextArea = freezed,Object? extraText = freezed,Object? isMultiple = freezed,Object? isDateTime = freezed,Object? isSignature = freezed,Object? sortOrder = freezed,Object? isRequired = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? deleted = freezed,Object? titleField = freezed,Object? isTemp = freezed,Object? companyId = freezed,Object? fieldTypeId = freezed,Object? fieldTypeName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isTextArea: freezed == isTextArea ? _self.isTextArea : isTextArea // ignore: cast_nullable_to_non_nullable
as bool?,extraText: freezed == extraText ? _self.extraText : extraText // ignore: cast_nullable_to_non_nullable
as bool?,isMultiple: freezed == isMultiple ? _self.isMultiple : isMultiple // ignore: cast_nullable_to_non_nullable
as bool?,isDateTime: freezed == isDateTime ? _self.isDateTime : isDateTime // ignore: cast_nullable_to_non_nullable
as bool?,isSignature: freezed == isSignature ? _self.isSignature : isSignature // ignore: cast_nullable_to_non_nullable
as bool?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,titleField: freezed == titleField ? _self.titleField : titleField // ignore: cast_nullable_to_non_nullable
as bool?,isTemp: freezed == isTemp ? _self.isTemp : isTemp // ignore: cast_nullable_to_non_nullable
as bool?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,fieldTypeId: freezed == fieldTypeId ? _self.fieldTypeId : fieldTypeId // ignore: cast_nullable_to_non_nullable
as String?,fieldTypeName: freezed == fieldTypeName ? _self.fieldTypeName : fieldTypeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistFieldDto].
extension ChecklistFieldDtoPatterns on ChecklistFieldDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistFieldDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistFieldDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistFieldDto value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistFieldDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistFieldDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistFieldDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'istextarea')  bool? isTextArea, @JsonKey(name: 'extratext')  bool? extraText, @JsonKey(name: 'ismultiple')  bool? isMultiple, @JsonKey(name: 'isdatetime')  bool? isDateTime, @JsonKey(name: 'issignature')  bool? isSignature, @JsonKey(name: 'sortorder')  int? sortOrder, @JsonKey(name: 'isrequired')  bool? isRequired,  String? dateCreated,  String? lastUpdated,  bool? deleted, @JsonKey(name: 'titlefield')  bool? titleField, @JsonKey(name: 'istemp')  bool? isTemp,  String? companyId, @JsonKey(name: 'fieldtypId')  String? fieldTypeId, @JsonKey(name: 'fieldtypname')  String? fieldTypeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistFieldDto() when $default != null:
return $default(_that.id,_that.name,_that.isTextArea,_that.extraText,_that.isMultiple,_that.isDateTime,_that.isSignature,_that.sortOrder,_that.isRequired,_that.dateCreated,_that.lastUpdated,_that.deleted,_that.titleField,_that.isTemp,_that.companyId,_that.fieldTypeId,_that.fieldTypeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name, @JsonKey(name: 'istextarea')  bool? isTextArea, @JsonKey(name: 'extratext')  bool? extraText, @JsonKey(name: 'ismultiple')  bool? isMultiple, @JsonKey(name: 'isdatetime')  bool? isDateTime, @JsonKey(name: 'issignature')  bool? isSignature, @JsonKey(name: 'sortorder')  int? sortOrder, @JsonKey(name: 'isrequired')  bool? isRequired,  String? dateCreated,  String? lastUpdated,  bool? deleted, @JsonKey(name: 'titlefield')  bool? titleField, @JsonKey(name: 'istemp')  bool? isTemp,  String? companyId, @JsonKey(name: 'fieldtypId')  String? fieldTypeId, @JsonKey(name: 'fieldtypname')  String? fieldTypeName)  $default,) {final _that = this;
switch (_that) {
case _ChecklistFieldDto():
return $default(_that.id,_that.name,_that.isTextArea,_that.extraText,_that.isMultiple,_that.isDateTime,_that.isSignature,_that.sortOrder,_that.isRequired,_that.dateCreated,_that.lastUpdated,_that.deleted,_that.titleField,_that.isTemp,_that.companyId,_that.fieldTypeId,_that.fieldTypeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name, @JsonKey(name: 'istextarea')  bool? isTextArea, @JsonKey(name: 'extratext')  bool? extraText, @JsonKey(name: 'ismultiple')  bool? isMultiple, @JsonKey(name: 'isdatetime')  bool? isDateTime, @JsonKey(name: 'issignature')  bool? isSignature, @JsonKey(name: 'sortorder')  int? sortOrder, @JsonKey(name: 'isrequired')  bool? isRequired,  String? dateCreated,  String? lastUpdated,  bool? deleted, @JsonKey(name: 'titlefield')  bool? titleField, @JsonKey(name: 'istemp')  bool? isTemp,  String? companyId, @JsonKey(name: 'fieldtypId')  String? fieldTypeId, @JsonKey(name: 'fieldtypname')  String? fieldTypeName)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistFieldDto() when $default != null:
return $default(_that.id,_that.name,_that.isTextArea,_that.extraText,_that.isMultiple,_that.isDateTime,_that.isSignature,_that.sortOrder,_that.isRequired,_that.dateCreated,_that.lastUpdated,_that.deleted,_that.titleField,_that.isTemp,_that.companyId,_that.fieldTypeId,_that.fieldTypeName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChecklistFieldDto implements ChecklistFieldDto {
  const _ChecklistFieldDto({this.id, this.name, @JsonKey(name: 'istextarea') this.isTextArea, @JsonKey(name: 'extratext') this.extraText, @JsonKey(name: 'ismultiple') this.isMultiple, @JsonKey(name: 'isdatetime') this.isDateTime, @JsonKey(name: 'issignature') this.isSignature, @JsonKey(name: 'sortorder') this.sortOrder, @JsonKey(name: 'isrequired') this.isRequired, this.dateCreated, this.lastUpdated, this.deleted, @JsonKey(name: 'titlefield') this.titleField, @JsonKey(name: 'istemp') this.isTemp, this.companyId, @JsonKey(name: 'fieldtypId') this.fieldTypeId, @JsonKey(name: 'fieldtypname') this.fieldTypeName});
  factory _ChecklistFieldDto.fromJson(Map<String, dynamic> json) => _$ChecklistFieldDtoFromJson(json);

@override final  String? id;
@override final  String? name;
@override@JsonKey(name: 'istextarea') final  bool? isTextArea;
@override@JsonKey(name: 'extratext') final  bool? extraText;
@override@JsonKey(name: 'ismultiple') final  bool? isMultiple;
@override@JsonKey(name: 'isdatetime') final  bool? isDateTime;
@override@JsonKey(name: 'issignature') final  bool? isSignature;
@override@JsonKey(name: 'sortorder') final  int? sortOrder;
@override@JsonKey(name: 'isrequired') final  bool? isRequired;
@override final  String? dateCreated;
@override final  String? lastUpdated;
@override final  bool? deleted;
@override@JsonKey(name: 'titlefield') final  bool? titleField;
@override@JsonKey(name: 'istemp') final  bool? isTemp;
@override final  String? companyId;
@override@JsonKey(name: 'fieldtypId') final  String? fieldTypeId;
@override@JsonKey(name: 'fieldtypname') final  String? fieldTypeName;

/// Create a copy of ChecklistFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistFieldDtoCopyWith<_ChecklistFieldDto> get copyWith => __$ChecklistFieldDtoCopyWithImpl<_ChecklistFieldDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChecklistFieldDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistFieldDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isTextArea, isTextArea) || other.isTextArea == isTextArea)&&(identical(other.extraText, extraText) || other.extraText == extraText)&&(identical(other.isMultiple, isMultiple) || other.isMultiple == isMultiple)&&(identical(other.isDateTime, isDateTime) || other.isDateTime == isDateTime)&&(identical(other.isSignature, isSignature) || other.isSignature == isSignature)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.titleField, titleField) || other.titleField == titleField)&&(identical(other.isTemp, isTemp) || other.isTemp == isTemp)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.fieldTypeId, fieldTypeId) || other.fieldTypeId == fieldTypeId)&&(identical(other.fieldTypeName, fieldTypeName) || other.fieldTypeName == fieldTypeName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isTextArea,extraText,isMultiple,isDateTime,isSignature,sortOrder,isRequired,dateCreated,lastUpdated,deleted,titleField,isTemp,companyId,fieldTypeId,fieldTypeName);

@override
String toString() {
  return 'ChecklistFieldDto(id: $id, name: $name, isTextArea: $isTextArea, extraText: $extraText, isMultiple: $isMultiple, isDateTime: $isDateTime, isSignature: $isSignature, sortOrder: $sortOrder, isRequired: $isRequired, dateCreated: $dateCreated, lastUpdated: $lastUpdated, deleted: $deleted, titleField: $titleField, isTemp: $isTemp, companyId: $companyId, fieldTypeId: $fieldTypeId, fieldTypeName: $fieldTypeName)';
}


}

/// @nodoc
abstract mixin class _$ChecklistFieldDtoCopyWith<$Res> implements $ChecklistFieldDtoCopyWith<$Res> {
  factory _$ChecklistFieldDtoCopyWith(_ChecklistFieldDto value, $Res Function(_ChecklistFieldDto) _then) = __$ChecklistFieldDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name,@JsonKey(name: 'istextarea') bool? isTextArea,@JsonKey(name: 'extratext') bool? extraText,@JsonKey(name: 'ismultiple') bool? isMultiple,@JsonKey(name: 'isdatetime') bool? isDateTime,@JsonKey(name: 'issignature') bool? isSignature,@JsonKey(name: 'sortorder') int? sortOrder,@JsonKey(name: 'isrequired') bool? isRequired, String? dateCreated, String? lastUpdated, bool? deleted,@JsonKey(name: 'titlefield') bool? titleField,@JsonKey(name: 'istemp') bool? isTemp, String? companyId,@JsonKey(name: 'fieldtypId') String? fieldTypeId,@JsonKey(name: 'fieldtypname') String? fieldTypeName
});




}
/// @nodoc
class __$ChecklistFieldDtoCopyWithImpl<$Res>
    implements _$ChecklistFieldDtoCopyWith<$Res> {
  __$ChecklistFieldDtoCopyWithImpl(this._self, this._then);

  final _ChecklistFieldDto _self;
  final $Res Function(_ChecklistFieldDto) _then;

/// Create a copy of ChecklistFieldDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? isTextArea = freezed,Object? extraText = freezed,Object? isMultiple = freezed,Object? isDateTime = freezed,Object? isSignature = freezed,Object? sortOrder = freezed,Object? isRequired = freezed,Object? dateCreated = freezed,Object? lastUpdated = freezed,Object? deleted = freezed,Object? titleField = freezed,Object? isTemp = freezed,Object? companyId = freezed,Object? fieldTypeId = freezed,Object? fieldTypeName = freezed,}) {
  return _then(_ChecklistFieldDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isTextArea: freezed == isTextArea ? _self.isTextArea : isTextArea // ignore: cast_nullable_to_non_nullable
as bool?,extraText: freezed == extraText ? _self.extraText : extraText // ignore: cast_nullable_to_non_nullable
as bool?,isMultiple: freezed == isMultiple ? _self.isMultiple : isMultiple // ignore: cast_nullable_to_non_nullable
as bool?,isDateTime: freezed == isDateTime ? _self.isDateTime : isDateTime // ignore: cast_nullable_to_non_nullable
as bool?,isSignature: freezed == isSignature ? _self.isSignature : isSignature // ignore: cast_nullable_to_non_nullable
as bool?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isRequired: freezed == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool?,dateCreated: freezed == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as String?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,titleField: freezed == titleField ? _self.titleField : titleField // ignore: cast_nullable_to_non_nullable
as bool?,isTemp: freezed == isTemp ? _self.isTemp : isTemp // ignore: cast_nullable_to_non_nullable
as bool?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,fieldTypeId: freezed == fieldTypeId ? _self.fieldTypeId : fieldTypeId // ignore: cast_nullable_to_non_nullable
as String?,fieldTypeName: freezed == fieldTypeName ? _self.fieldTypeName : fieldTypeName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
