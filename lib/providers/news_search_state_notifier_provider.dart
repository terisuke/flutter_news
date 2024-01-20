// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_news/notifiers/news_search_state_notifier.dart';
import 'package:flutter_news/states/news_search_state.dart';

final newsSearchStateNotifierProvider =
    StateNotifierProvider<NewsSearchStateNotifier, NewsSearchState>(
  (ref) => NewsSearchStateNotifier(ref: ref),
);
