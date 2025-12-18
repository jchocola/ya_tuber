// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrackModel implements DiagnosticableTreeMixin {

 String get videoId; String get title; String get subtitle;
/// Create a copy of TrackModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackModelCopyWith<TrackModel> get copyWith => _$TrackModelCopyWithImpl<TrackModel>(this as TrackModel, _$identity);

  /// Serializes this TrackModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TrackModel'))
    ..add(DiagnosticsProperty('videoId', videoId))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('subtitle', subtitle));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackModel&&(identical(other.videoId, videoId) || other.videoId == videoId)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoId,title,subtitle);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TrackModel(videoId: $videoId, title: $title, subtitle: $subtitle)';
}


}

/// @nodoc
abstract mixin class $TrackModelCopyWith<$Res>  {
  factory $TrackModelCopyWith(TrackModel value, $Res Function(TrackModel) _then) = _$TrackModelCopyWithImpl;
@useResult
$Res call({
 String videoId, String title, String subtitle
});




}
/// @nodoc
class _$TrackModelCopyWithImpl<$Res>
    implements $TrackModelCopyWith<$Res> {
  _$TrackModelCopyWithImpl(this._self, this._then);

  final TrackModel _self;
  final $Res Function(TrackModel) _then;

/// Create a copy of TrackModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoId = null,Object? title = null,Object? subtitle = null,}) {
  return _then(_self.copyWith(
videoId: null == videoId ? _self.videoId : videoId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TrackModel].
extension TrackModelPatterns on TrackModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrackModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrackModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrackModel value)  $default,){
final _that = this;
switch (_that) {
case _TrackModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrackModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrackModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String videoId,  String title,  String subtitle)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrackModel() when $default != null:
return $default(_that.videoId,_that.title,_that.subtitle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String videoId,  String title,  String subtitle)  $default,) {final _that = this;
switch (_that) {
case _TrackModel():
return $default(_that.videoId,_that.title,_that.subtitle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String videoId,  String title,  String subtitle)?  $default,) {final _that = this;
switch (_that) {
case _TrackModel() when $default != null:
return $default(_that.videoId,_that.title,_that.subtitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrackModel extends TrackModel with DiagnosticableTreeMixin {
  const _TrackModel({required this.videoId, required this.title, required this.subtitle}): super._();
  factory _TrackModel.fromJson(Map<String, dynamic> json) => _$TrackModelFromJson(json);

@override final  String videoId;
@override final  String title;
@override final  String subtitle;

/// Create a copy of TrackModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackModelCopyWith<_TrackModel> get copyWith => __$TrackModelCopyWithImpl<_TrackModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrackModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TrackModel'))
    ..add(DiagnosticsProperty('videoId', videoId))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('subtitle', subtitle));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrackModel&&(identical(other.videoId, videoId) || other.videoId == videoId)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,videoId,title,subtitle);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TrackModel(videoId: $videoId, title: $title, subtitle: $subtitle)';
}


}

/// @nodoc
abstract mixin class _$TrackModelCopyWith<$Res> implements $TrackModelCopyWith<$Res> {
  factory _$TrackModelCopyWith(_TrackModel value, $Res Function(_TrackModel) _then) = __$TrackModelCopyWithImpl;
@override @useResult
$Res call({
 String videoId, String title, String subtitle
});




}
/// @nodoc
class __$TrackModelCopyWithImpl<$Res>
    implements _$TrackModelCopyWith<$Res> {
  __$TrackModelCopyWithImpl(this._self, this._then);

  final _TrackModel _self;
  final $Res Function(_TrackModel) _then;

/// Create a copy of TrackModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoId = null,Object? title = null,Object? subtitle = null,}) {
  return _then(_TrackModel(
videoId: null == videoId ? _self.videoId : videoId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
