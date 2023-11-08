import 'package:flutter/material.dart';
import 'package:social_sphere/generated/l10n.dart';
import 'package:uikit/theme/main_theme.dart';
import 'package:uikit/theme/text_theme.dart';

class Layout {
  final MyTheme theme;
  final MyTextTheme textTheme;
  final S intl;

  const Layout._({
    required this.theme,
    required this.textTheme,
    required this.intl,
  });

  factory Layout.of(BuildContext context) {
    return Layout._(
      theme: context.myTheme,
      textTheme: context.myTheme.textTheme,
      intl: S(),
    );
  }
}