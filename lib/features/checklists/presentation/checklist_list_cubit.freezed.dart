// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChecklistListState {

 ChecklistListStatus get status; List<ChecklistSummary> get items; FailureType? get failure; Event<ChecklistListEffect>? get effect;
/// Create a copy of ChecklistListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistListStateCopyWith<ChecklistListState> get copyWith => _$ChecklistListStateCopyWithImpl<ChecklistListState>(this as ChecklistListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.effect, effect) || other.effect == effect));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),failure,effect);

@override
String toString() {
  return 'ChecklistListState(status: $status, items: $items, failure: $failure, effect: $effect)';
}


}

/// @nodoc
abstract mixin class $ChecklistListStateCopyWith<$Res>  {
  factory $ChecklistListStateCopyWith(ChecklistListState value, $Res Function(ChecklistListState) _then) = _$ChecklistListStateCopyWithImpl;
@useResult
$Res call({
 ChecklistListStatus status, List<ChecklistSummary> items, FailureType? failure, Event<ChecklistListEffect>? effect
});




}
/// @nodoc
class _$ChecklistListStateCopyWithImpl<$Res>
    implements $ChecklistListStateCopyWith<$Res> {
  _$ChecklistListStateCopyWithImpl(this._self, this._then);

  final ChecklistListState _self;
  final $Res Function(ChecklistListState) _then;

/// Create a copy of ChecklistListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? failure = freezed,Object? effect = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChecklistListStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ChecklistSummary>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as FailureType?,effect: freezed == effect ? _self.effect : effect // ignore: cast_nullable_to_non_nullable
as Event<ChecklistListEffect>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChecklistListState].
extension ChecklistListStatePatterns on ChecklistListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChecklistListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChecklistListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChecklistListState value)  $default,){
final _that = this;
switch (_that) {
case _ChecklistListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChecklistListState value)?  $default,){
final _that = this;
switch (_that) {
case _ChecklistListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChecklistListStatus status,  List<ChecklistSummary> items,  FailureType? failure,  Event<ChecklistListEffect>? effect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistListState() when $default != null:
return $default(_that.status,_that.items,_that.failure,_that.effect);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChecklistListStatus status,  List<ChecklistSummary> items,  FailureType? failure,  Event<ChecklistListEffect>? effect)  $default,) {final _that = this;
switch (_that) {
case _ChecklistListState():
return $default(_that.status,_that.items,_that.failure,_that.effect);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChecklistListStatus status,  List<ChecklistSummary> items,  FailureType? failure,  Event<ChecklistListEffect>? effect)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistListState() when $default != null:
return $default(_that.status,_that.items,_that.failure,_that.effect);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistListState implements ChecklistListState {
  const _ChecklistListState({this.status = ChecklistListStatus.initial, final  List<ChecklistSummary> items = const <ChecklistSummary>[], this.failure, this.effect}): _items = items;
  

@override@JsonKey() final  ChecklistListStatus status;
 final  List<ChecklistSummary> _items;
@override@JsonKey() List<ChecklistSummary> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  FailureType? failure;
@override final  Event<ChecklistListEffect>? effect;

/// Create a copy of ChecklistListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistListStateCopyWith<_ChecklistListState> get copyWith => __$ChecklistListStateCopyWithImpl<_ChecklistListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.effect, effect) || other.effect == effect));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),failure,effect);

@override
String toString() {
  return 'ChecklistListState(status: $status, items: $items, failure: $failure, effect: $effect)';
}


}

/// @nodoc
abstract mixin class _$ChecklistListStateCopyWith<$Res> implements $ChecklistListStateCopyWith<$Res> {
  factory _$ChecklistListStateCopyWith(_ChecklistListState value, $Res Function(_ChecklistListState) _then) = __$ChecklistListStateCopyWithImpl;
@override @useResult
$Res call({
 ChecklistListStatus status, List<ChecklistSummary> items, FailureType? failure, Event<ChecklistListEffect>? effect
});




}
/// @nodoc
class __$ChecklistListStateCopyWithImpl<$Res>
    implements _$ChecklistListStateCopyWith<$Res> {
  __$ChecklistListStateCopyWithImpl(this._self, this._then);

  final _ChecklistListState _self;
  final $Res Function(_ChecklistListState) _then;

/// Create a copy of ChecklistListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? failure = freezed,Object? effect = freezed,}) {
  return _then(_ChecklistListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChecklistListStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ChecklistSummary>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as FailureType?,effect: freezed == effect ? _self.effect : effect // ignore: cast_nullable_to_non_nullable
as Event<ChecklistListEffect>?,
  ));
}


}

// dart format on
