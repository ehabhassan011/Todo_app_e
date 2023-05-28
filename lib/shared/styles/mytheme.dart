import 'package:flutter/material.dart';

import 'appcolor.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primaryColor: lightColor,
      scaffoldBackgroundColor: lightGreenColor,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        bodyMedium: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: lightColor),
        bodySmall: TextStyle(
            fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black54),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
        selectedItemColor: lightColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: lightColor,
        iconTheme: IconThemeData(color: Colors.black54, size: 30),
      ));
  static ThemeData darkTheme = ThemeData();
}
