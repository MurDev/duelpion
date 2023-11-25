import 'package:duelpion/src/utils/constants/text_strings.dart';
import 'package:duelpion/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: CTexts.appName,
      themeMode: ThemeMode.light,
      theme: CAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(child : Text(CTexts.appName)),
      ),
    );
  }
}