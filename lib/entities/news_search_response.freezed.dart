// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsSearchResponse _$NewsSearchResponseFromJson(Map<String, dynamic> json) {
  return _NewsSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsSearchResponse {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<NewsArticle>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsSearchResponseCopyWith<NewsSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSearchResponseCopyWith<$Res> {
  factory $NewsSearchResponseCopyWith(
          NewsSearchResponse value, $Res Function(NewsSearchResponse) then) =
      _$NewsSearchResponseCopyWithImpl<$Res, NewsSearchResponse>;
  @useResult
  $Res call({String? status, int? totalResults, List<NewsArticle>? articles});
}

/// @nodoc
class _$NewsSearchResponseCopyWithImpl<$Res, $Val extends NewsSearchResponse>
    implements $NewsSearchResponseCopyWith<$Res> {
  _$NewsSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsSearchResponseImplCopyWith<$Res>
    implements $NewsSearchResponseCopyWith<$Res> {
  factory _$$NewsSearchResponseImplCopyWith(_$NewsSearchResponseImpl value,
          $Res Function(_$NewsSearchResponseImpl) then) =
      __$$NewsSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, int? totalResults, List<NewsArticle>? articles});
}

/// @nodoc
class __$$NewsSearchResponseImplCopyWithImpl<$Res>
    extends _$NewsSearchResponseCopyWithImpl<$Res, _$NewsSearchResponseImpl>
    implements _$$NewsSearchResponseImplCopyWith<$Res> {
  __$$NewsSearchResponseImplCopyWithImpl(_$NewsSearchResponseImpl _value,
      $Res Function(_$NewsSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$NewsSearchResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsSearchResponseImpl extends _NewsSearchResponse {
  _$NewsSearchResponseImpl(
      {this.status, this.totalResults, final List<NewsArticle>? articles})
      : _articles = articles,
        super._();

  factory _$NewsSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsSearchResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  final List<NewsArticle>? _articles;
  @override
  List<NewsArticle>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsSearchResponse(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSearchResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsSearchResponseImplCopyWith<_$NewsSearchResponseImpl> get copyWith =>
      __$$NewsSearchResponseImplCopyWithImpl<_$NewsSearchResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _NewsSearchResponse extends NewsSearchResponse {
  factory _NewsSearchResponse(
      {final String? status,
      final int? totalResults,
      final List<NewsArticle>? articles}) = _$NewsSearchResponseImpl;
  _NewsSearchResponse._() : super._();

  factory _NewsSearchResponse.fromJson(Map<String, dynamic> json) =
      _$NewsSearchResponseImpl.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  List<NewsArticle>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$NewsSearchResponseImplCopyWith<_$NewsSearchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
