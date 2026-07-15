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

 ChecklistListStatus get status; List<ChecklistSummary> get items; Set<String> get favoriteIds; String get query; bool get isRefreshing; bool get isLoadingMore; bool get hasMore; FailureType? get failure;
/// Create a copy of ChecklistListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChecklistListStateCopyWith<ChecklistListState> get copyWith => _$ChecklistListStateCopyWithImpl<ChecklistListState>(this as ChecklistListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChecklistListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.favoriteIds, favoriteIds)&&(identical(other.query, query) || other.query == query)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(favoriteIds),query,isRefreshing,isLoadingMore,hasMore,failure);

@override
String toString() {
  return 'ChecklistListState(status: $status, items: $items, favoriteIds: $favoriteIds, query: $query, isRefreshing: $isRefreshing, isLoadingMore: $isLoadingMore, hasMore: $hasMore, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ChecklistListStateCopyWith<$Res>  {
  factory $ChecklistListStateCopyWith(ChecklistListState value, $Res Function(ChecklistListState) _then) = _$ChecklistListStateCopyWithImpl;
@useResult
$Res call({
 ChecklistListStatus status, List<ChecklistSummary> items, Set<String> favoriteIds, String query, bool isRefreshing, bool isLoadingMore, bool hasMore, FailureType? failure
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
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? favoriteIds = null,Object? query = null,Object? isRefreshing = null,Object? isLoadingMore = null,Object? hasMore = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChecklistListStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ChecklistSummary>,favoriteIds: null == favoriteIds ? _self.favoriteIds : favoriteIds // ignore: cast_nullable_to_non_nullable
as Set<String>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as FailureType?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChecklistListStatus status,  List<ChecklistSummary> items,  Set<String> favoriteIds,  String query,  bool isRefreshing,  bool isLoadingMore,  bool hasMore,  FailureType? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChecklistListState() when $default != null:
return $default(_that.status,_that.items,_that.favoriteIds,_that.query,_that.isRefreshing,_that.isLoadingMore,_that.hasMore,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChecklistListStatus status,  List<ChecklistSummary> items,  Set<String> favoriteIds,  String query,  bool isRefreshing,  bool isLoadingMore,  bool hasMore,  FailureType? failure)  $default,) {final _that = this;
switch (_that) {
case _ChecklistListState():
return $default(_that.status,_that.items,_that.favoriteIds,_that.query,_that.isRefreshing,_that.isLoadingMore,_that.hasMore,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChecklistListStatus status,  List<ChecklistSummary> items,  Set<String> favoriteIds,  String query,  bool isRefreshing,  bool isLoadingMore,  bool hasMore,  FailureType? failure)?  $default,) {final _that = this;
switch (_that) {
case _ChecklistListState() when $default != null:
return $default(_that.status,_that.items,_that.favoriteIds,_that.query,_that.isRefreshing,_that.isLoadingMore,_that.hasMore,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _ChecklistListState implements ChecklistListState {
  const _ChecklistListState({this.status = ChecklistListStatus.initial, final  List<ChecklistSummary> items = const <ChecklistSummary>[], final  Set<String> favoriteIds = const <String>{}, this.query = '', this.isRefreshing = false, this.isLoadingMore = false, this.hasMore = true, this.failure}): _items = items,_favoriteIds = favoriteIds;
  

@override@JsonKey() final  ChecklistListStatus status;
 final  List<ChecklistSummary> _items;
@override@JsonKey() List<ChecklistSummary> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  Set<String> _favoriteIds;
@override@JsonKey() Set<String> get favoriteIds {
  if (_favoriteIds is EqualUnmodifiableSetView) return _favoriteIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_favoriteIds);
}

@override@JsonKey() final  String query;
@override@JsonKey() final  bool isRefreshing;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool hasMore;
@override final  FailureType? failure;

/// Create a copy of ChecklistListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChecklistListStateCopyWith<_ChecklistListState> get copyWith => __$ChecklistListStateCopyWithImpl<_ChecklistListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChecklistListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._favoriteIds, _favoriteIds)&&(identical(other.query, query) || other.query == query)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_favoriteIds),query,isRefreshing,isLoadingMore,hasMore,failure);

@override
String toString() {
  return 'ChecklistListState(status: $status, items: $items, favoriteIds: $favoriteIds, query: $query, isRefreshing: $isRefreshing, isLoadingMore: $isLoadingMore, hasMore: $hasMore, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ChecklistListStateCopyWith<$Res> implements $ChecklistListStateCopyWith<$Res> {
  factory _$ChecklistListStateCopyWith(_ChecklistListState value, $Res Function(_ChecklistListState) _then) = __$ChecklistListStateCopyWithImpl;
@override @useResult
$Res call({
 ChecklistListStatus status, List<ChecklistSummary> items, Set<String> favoriteIds, String query, bool isRefreshing, bool isLoadingMore, bool hasMore, FailureType? failure
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
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? favoriteIds = null,Object? query = null,Object? isRefreshing = null,Object? isLoadingMore = null,Object? hasMore = null,Object? failure = freezed,}) {
  return _then(_ChecklistListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChecklistListStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ChecklistSummary>,favoriteIds: null == favoriteIds ? _self._favoriteIds : favoriteIds // ignore: cast_nullable_to_non_nullable
as Set<String>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as FailureType?,
  ));
}


}

// dart format on
