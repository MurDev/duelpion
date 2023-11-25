import 'package:duelpion/src/screens/signup/signup.dart';
import 'package:duelpion/src/screens/welcome.dart';
import 'package:duelpion/src/utils/constants/text_strings.dart';
import 'package:duelpion/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: CTexts.appName,
      themeMode: ThemeMode.light,
      theme: CAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const SignupScreen(),
    );
  }
}