// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_headline_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsHeadlineState {
  AsyncValue<List<NewsArticle>> get articles =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsHeadlineStateCopyWith<NewsHeadlineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsHeadlineStateCopyWith<$Res> {
  factory $NewsHeadlineStateCopyWith(
          NewsHeadlineState value, $Res Function(NewsHeadlineState) then) =
      _$NewsHeadlineStateCopyWithImpl<$Res, NewsHeadlineState>;
  @useResult
  $Res call({AsyncValue<List<NewsArticle>> articles});
}

/// @nodoc
class _$NewsHeadlineStateCopyWithImpl<$Res, $Val extends NewsHeadlineState>
    implements $NewsHeadlineStateCopyWith<$Res> {
  _$NewsHeadlineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<NewsArticle>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsHeadlineStateImplCopyWith<$Res>
    implements $NewsHeadlineStateCopyWith<$Res> {
  factory _$$NewsHeadlineStateImplCopyWith(_$NewsHeadlineStateImpl value,
          $Res Function(_$NewsHeadlineStateImpl) then) =
      __$$NewsHeadlineStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<NewsArticle>> articles});
}

/// @nodoc
class __$$NewsHeadlineStateImplCopyWithImpl<$Res>
    extends _$NewsHeadlineStateCopyWithImpl<$Res, _$NewsHeadlineStateImpl>
    implements _$$NewsHeadlineStateImplCopyWith<$Res> {
  __$$NewsHeadlineStateImplCopyWithImpl(_$NewsHeadlineStateImpl _value,
      $Res Function(_$NewsHeadlineStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$NewsHeadlineStateImpl(
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<NewsArticle>>,
    ));
  }
}

/// @nodoc

class _$NewsHeadlineStateImpl extends _NewsHeadlineState {
  _$NewsHeadlineStateImpl(
      {this.articles = const AsyncValue.data(<NewsArticle>[])})
      : super._();

  @override
  @JsonKey()
  final AsyncValue<List<NewsArticle>> articles;

  @override
  String toString() {
    return 'NewsHeadlineState(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsHeadlineStateImpl &&
            (identical(other.articles, articles) ||
                other.articles == articles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsHeadlineStateImplCopyWith<_$NewsHeadlineStateImpl> get copyWith =>
      __$$NewsHeadlineStateImplCopyWithImpl<_$NewsHeadlineStateImpl>(
          this, _$identity);
}

abstract class _NewsHeadlineState extends NewsHeadlineState {
  factory _NewsHeadlineState({final AsyncValue<List<NewsArticle>> articles}) =
      _$NewsHeadlineStateImpl;
  _NewsHeadlineState._() : super._();

  @override
  AsyncValue<List<NewsArticle>> get articles;
  @override
  @JsonKey(ignore: true)
  _$$NewsHeadlineStateImplCopyWith<_$NewsHeadlineStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
