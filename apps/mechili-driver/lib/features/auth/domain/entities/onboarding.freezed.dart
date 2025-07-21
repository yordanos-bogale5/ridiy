// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnBoardingItem {
  AssetGenImage get image;
  String get title;
  String get description;

  /// Create a copy of OnBoardingItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnBoardingItemCopyWith<OnBoardingItem> get copyWith =>
      _$OnBoardingItemCopyWithImpl<OnBoardingItem>(
          this as OnBoardingItem, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnBoardingItem &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(image), title, description);

  @override
  String toString() {
    return 'OnBoardingItem(image: $image, title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class $OnBoardingItemCopyWith<$Res> {
  factory $OnBoardingItemCopyWith(
          OnBoardingItem value, $Res Function(OnBoardingItem) _then) =
      _$OnBoardingItemCopyWithImpl;
  @useResult
  $Res call({AssetGenImage image, String title, String description});
}

/// @nodoc
class _$OnBoardingItemCopyWithImpl<$Res>
    implements $OnBoardingItemCopyWith<$Res> {
  _$OnBoardingItemCopyWithImpl(this._self, this._then);

  final OnBoardingItem _self;
  final $Res Function(OnBoardingItem) _then;

  /// Create a copy of OnBoardingItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as AssetGenImage,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _OnBoardItem implements OnBoardingItem {
  const _OnBoardItem(
      {required this.image, required this.title, required this.description});

  @override
  final AssetGenImage image;
  @override
  final String title;
  @override
  final String description;

  /// Create a copy of OnBoardingItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnBoardItemCopyWith<_OnBoardItem> get copyWith =>
      __$OnBoardItemCopyWithImpl<_OnBoardItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnBoardItem &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(image), title, description);

  @override
  String toString() {
    return 'OnBoardingItem(image: $image, title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$OnBoardItemCopyWith<$Res>
    implements $OnBoardingItemCopyWith<$Res> {
  factory _$OnBoardItemCopyWith(
          _OnBoardItem value, $Res Function(_OnBoardItem) _then) =
      __$OnBoardItemCopyWithImpl;
  @override
  @useResult
  $Res call({AssetGenImage image, String title, String description});
}

/// @nodoc
class __$OnBoardItemCopyWithImpl<$Res> implements _$OnBoardItemCopyWith<$Res> {
  __$OnBoardItemCopyWithImpl(this._self, this._then);

  final _OnBoardItem _self;
  final $Res Function(_OnBoardItem) _then;

  /// Create a copy of OnBoardingItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_OnBoardItem(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as AssetGenImage,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
