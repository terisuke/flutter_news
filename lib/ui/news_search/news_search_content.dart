// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:uri/uri.dart';
import 'package:url_launcher/url_launcher.dart';

// Project imports:
import 'package:flutter_news/config/routes/app_router.dart';
import 'package:flutter_news/exceptions/app_exception.dart';
import 'package:flutter_news/providers/news_search_state_notifier_provider.dart';
import 'package:flutter_news/ui/widgets/news_article_grid_item.dart';

class NewsSearchContent extends HookConsumerWidget {
  const NewsSearchContent({
    Key? key,
    required this.gridCrossAxisCount,
  }) : super(key: key);

  final int gridCrossAxisCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsSearchState = ref.watch(newsSearchStateNotifierProvider);

    return newsSearchState.articles.when(
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
      error: (error, stackTrace) {
        return LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Center(child: Text((error as AppException).message)),
            ),
          ),
        );
      },
      data: (articles) {
        final gridChildren = articles.map<Widget>((article) {
          return NewsArticleGridItem(
            newsArticle: article,
            onTap: () {
              if (article.url == null) {
                return;
              }

              if (UniversalPlatform.isAndroid || UniversalPlatform.isIOS) {
                final uriBuilder = UriBuilder()
                  ..path = const NewsDetailRoute().path
                  ..queryParameters['title'] = article.title.toString()
                  ..queryParameters['url'] = article.url.toString();
                AutoRouter.of(context).pushNamed(uriBuilder.build().toString());
              } else {
                launch(article.url.toString());
              }
            },
          );
        }).toList();
        return GridView.count(
          crossAxisCount: gridCrossAxisCount,
          physics: const AlwaysScrollableScrollPhysics(),
          children: gridChildren,
        );
      },
    );
  }
}
