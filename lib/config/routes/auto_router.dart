// lib/config/routes/auto_router.dart

import 'package:auto_route/auto_route.dart';
import 'package:flutter_news/ui/main/main_page.dart';
import 'package:flutter_news/ui/news_detail/news_detail.dart';
import 'package:flutter_news/ui/news_headline/news_headline_page.dart';
import 'package:flutter_news/ui/news_search/news_search_page.dart';
import 'package:flutter_news/ui/setting/setting_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MainPage,
      children: [
        AutoRoute(
          path: 'news_headline',
          page: NewsHeadlinePage,
          initial: true,
        ),
        AutoRoute(path: 'news_search', page: NewsSearchPage),
        AutoRoute(path: 'setting', page: SettingPage),
      ],
    ),
    AutoRoute(path: '/news_detail', page: NewsDetailPage),
  ],
)
class $AppRouter {}
