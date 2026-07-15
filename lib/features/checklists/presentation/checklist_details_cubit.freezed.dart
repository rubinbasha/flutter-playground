// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChecklistDetailsState {

 ChecklistDetailsStatus get status; ChecklistDetails? get details; FailureType? get failure;
/// Create a copy of ChecklistDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistDetailsStateCopyWith<ChecklistDetailsState> get copyWith => _$ChecklistDetailsStateCopyWithImpl<ChecklistDetailsState>(this as ChecklistDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.details, details) || other.details == details)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,details,failure);

@override
String toString() {
  return 'ChecklistDetailsState(status: $status, details: $details, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ChecklistDetailsStateCopyWith<$Res>  {
  factory $ChecklistDetailsStateCopyWith(ChecklistDetailsState value, $Res Function(ChecklistDetailsState) _then) = _$ChecklistDetailsStateCopyWithImpl;
@useResult
$Res call({
 ChecklistDetailsStatus status, ChecklistDetails? details, FailureType? failure
});


$ChecklistDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class _$ChecklistDetailsStateCopyWithImpl<$Res>
    implements $ChecklistDetailsStateCopyWith<$Res> {
  _$ChecklistDetailsStateCopyWithImpl(this._self, this._then);

  final ChecklistDetailsState _self;
  final $Res Function(ChecklistDetailsState) _then;

/// Create a copy of ChecklistDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? details = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChecklistDetailsStatus,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as ChecklistDetails?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as FailureType?,
  ));
}
/// Create a copy of ChecklistDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChecklistDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $ChecklistDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChecklistDetailsState].
extension ChecklistDetailsStatePatterns on ChecklistDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChecklistDetailsStatus status,  ChecklistDetails? details,  FailureType? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistDetailsState() when $default != null:
return $default(_that.status,_that.details,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChecklistDetailsStatus status,  ChecklistDetails? details,  FailureType? failure)  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetailsState():
return $default(_that.status,_that.details,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChecklistDetailsStatus status,  ChecklistDetails? details,  FailureType? failure)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistDetailsState() when $default != null:
return $default(_that.status,_that.details,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistDetailsState implements ChecklistDetailsState {
  const _ChecklistDetailsState({this.status = ChecklistDetailsStatus.initial, this.details, this.failure});
  

@override@JsonKey() final  ChecklistDetailsStatus status;
@override final  ChecklistDetails? details;
@override final  FailureType? failure;

/// Create a copy of ChecklistDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistDetailsStateCopyWith<_ChecklistDetailsState> get copyWith => __$ChecklistDetailsStateCopyWithImpl<_ChecklistDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.details, details) || other.details == details)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,details,failure);

@override
String toString() {
  return 'ChecklistDetailsState(status: $status, details: $details, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ChecklistDetailsStateCopyWith<$Res> implements $ChecklistDetailsStateCopyWith<$Res> {
  factory _$ChecklistDetailsStateCopyWith(_ChecklistDetailsState value, $Res Function(_ChecklistDetailsState) _then) = __$ChecklistDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 ChecklistDetailsStatus status, ChecklistDetails? details, FailureType? failure
});


@override $ChecklistDetailsCopyWith<$Res>? get details;

}
/// @nodoc
class __$ChecklistDetailsStateCopyWithImpl<$Res>
    implements _$ChecklistDetailsStateCopyWith<$Res> {
  __$ChecklistDetailsStateCopyWithImpl(this._self, this._then);

  final _ChecklistDetailsState _self;
  final $Res Function(_ChecklistDetailsState) _then;

/// Create a copy of ChecklistDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? details = freezed,Object? failure = freezed,}) {
  return _then(_ChecklistDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChecklistDetailsStatus,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as ChecklistDetails?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as FailureType?,
  ));
}

/// Create a copy of ChecklistDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChecklistDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
    return null;
  }

  return $ChecklistDetailsCopyWith<$Res>(_self.details!, (value) {
    return _then(_self.copyWith(details: value));
  });
}
}

// dart format on
