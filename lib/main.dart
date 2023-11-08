import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:social_sphere/main_page/main_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:uikit/theme/main_theme.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightThemeData = ThemeData.light().copyWith(
      extensions: [MyTheme.light],
      brightness: Brightness.light,
      useMaterial3: true,
    );

    final darkThemeData = ThemeData.dark().copyWith(
      extensions: [MyTheme.dark],
      brightness: Brightness.dark,
      useMaterial3: true,
    );

    return AdaptiveTheme(
      light: lightThemeData,
      dark: darkThemeData,
      initial: AdaptiveThemeMode.system,
      builder: (ThemeData light, ThemeData dark) {
        return MaterialApp(
          title: 'Adaptive Theme Demo',
          theme: light,
          darkTheme: dark,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: const MainPage(),
        );
      },
    );
  }
}
