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
import 'package:flutter_news/providers/news_headline_state_notifier_provider.dart';
import 'package:flutter_news/ui/widgets/news_article_grid_item.dart';

class NewsHeadlineContent extends HookConsumerWidget {
  const NewsHeadlineContent({
    Key? key,
    required this.category,
    required this.gridCrossAxisCount,
  }) : super(key: key);

  final String category;
  final int gridCrossAxisCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsHeadlineState =
        ref.watch(newsHeadlineStateNotifierProvider(category));

    Future<void> refresh() async {
      await ref
          .read(newsHeadlineStateNotifierProvider(category).notifier)
          .fetch()
          .onError((error, stackTrace) {
        if (error != null && error is AppException) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error.message)),
          );
        }
      });
    }

    return newsHeadlineState.articles.when(
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
      error: (error, stackTrace) {
        return RefreshIndicator(
          onRefresh: refresh,
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(child: Text((error as AppException).message)),
              ),
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

        return RefreshIndicator(
          onRefresh: refresh,
          child: GridView.count(
            crossAxisCount: gridCrossAxisCount,
            physics: const AlwaysScrollableScrollPhysics(),
            children: gridChildren,
          ),
        );
      },
    );
  }
}
