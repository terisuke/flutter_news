// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsSearchState {
  String get keyword => throw _privateConstructorUsedError;
  AsyncValue<List<NewsArticle>> get articles =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsSearchStateCopyWith<NewsSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSearchStateCopyWith<$Res> {
  factory $NewsSearchStateCopyWith(
          NewsSearchState value, $Res Function(NewsSearchState) then) =
      _$NewsSearchStateCopyWithImpl<$Res, NewsSearchState>;
  @useResult
  $Res call({String keyword, AsyncValue<List<NewsArticle>> articles});
}

/// @nodoc
class _$NewsSearchStateCopyWithImpl<$Res, $Val extends NewsSearchState>
    implements $NewsSearchStateCopyWith<$Res> {
  _$NewsSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<NewsArticle>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsSearchStateImplCopyWith<$Res>
    implements $NewsSearchStateCopyWith<$Res> {
  factory _$$NewsSearchStateImplCopyWith(_$NewsSearchStateImpl value,
          $Res Function(_$NewsSearchStateImpl) then) =
      __$$NewsSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, AsyncValue<List<NewsArticle>> articles});
}

/// @nodoc
class __$$NewsSearchStateImplCopyWithImpl<$Res>
    extends _$NewsSearchStateCopyWithImpl<$Res, _$NewsSearchStateImpl>
    implements _$$NewsSearchStateImplCopyWith<$Res> {
  __$$NewsSearchStateImplCopyWithImpl(
      _$NewsSearchStateImpl _value, $Res Function(_$NewsSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? articles = null,
  }) {
    return _then(_$NewsSearchStateImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<NewsArticle>>,
    ));
  }
}

/// @nodoc

class _$NewsSearchStateImpl extends _NewsSearchState {
  _$NewsSearchStateImpl(
      {this.keyword = '',
      this.articles = const AsyncValue.data(<NewsArticle>[])})
      : super._();

  @override
  @JsonKey()
  final String keyword;
  @override
  @JsonKey()
  final AsyncValue<List<NewsArticle>> articles;

  @override
  String toString() {
    return 'NewsSearchState(keyword: $keyword, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSearchStateImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.articles, articles) ||
                other.articles == articles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword, articles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsSearchStateImplCopyWith<_$NewsSearchStateImpl> get copyWith =>
      __$$NewsSearchStateImplCopyWithImpl<_$NewsSearchStateImpl>(
          this, _$identity);
}

abstract class _NewsSearchState extends NewsSearchState {
  factory _NewsSearchState(
      {final String keyword,
      final AsyncValue<List<NewsArticle>> articles}) = _$NewsSearchStateImpl;
  _NewsSearchState._() : super._();

  @override
  String get keyword;
  @override
  AsyncValue<List<NewsArticle>> get articles;
  @override
  @JsonKey(ignore: true)
  _$$NewsSearchStateImplCopyWith<_$NewsSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
