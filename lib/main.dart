import 'package:flutter/material.dart';
import 'package:todo_app_e/home_layout/home_layout.dart';
import 'package:todo_app_e/shared/styles/mytheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: HomeLayout.routeName,
      routes: {
        // LoginScreen.routeName: (context) => LoginScreen(),
        // SignUpScreen.routeName: (context) => SignUpScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
    );
  }
}
