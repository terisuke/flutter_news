// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_news/exceptions/app_exception.dart';
import 'package:flutter_news/providers/news_search_state_notifier_provider.dart';
import 'package:flutter_news/ui/news_search/news_search_content.dart';
import 'package:flutter_news/ui/news_search/news_search_form.dart';

class NewsSearchPage extends HookConsumerWidget {
  const NewsSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context)!;
    final keyword = useState('');

    Future<void> fetchNewsSearch(String keyword) {
      FocusScope.of(context).unfocus();
      if (keyword.isNotEmpty) {
        return ref
            .read(newsSearchStateNotifierProvider.notifier)
            .fetch(keyword: keyword)
            .onError((error, stackTrace) {
          if (error != null && error is AppException) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error.message)),
            );
          }
        });
      }

      return Future.value();
    }

    Future<void> refresh() async {
      return fetchNewsSearch(keyword.value);
    }

    return LayoutBuilder(
      builder: (_, constraints) {
        final breakpoint = Breakpoint.fromConstraints(constraints);
        final appBar = AppBar(title: Text(l10n.newsSearchTitle));
        final body = RefreshIndicator(
          onRefresh: refresh,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: NewsSearchForm(
                  onSubmit: (value) {
                    keyword.value = value;
                    fetchNewsSearch(keyword.value);
                  },
                ),
              ),
              Expanded(
                child: NewsSearchContent(
                  gridCrossAxisCount: breakpoint.columns ~/ 2,
                ),
              )
            ],
          ),
        );
        return Scaffold(appBar: appBar, body: body);
      },
    );
  }
}
