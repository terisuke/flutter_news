// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_news/notifiers/theme_mode_state_notifier.dart';

final themeModeStateNotifierProvider =
    StateNotifierProvider<ThemeModeStateNotifier, ThemeMode>(
  (ref) => ThemeModeStateNotifier(ref: ref),
);
