import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.purple;

  static final ThemeData ligtTheme = ThemeData.light().copyWith(
    // color primario
    primaryColor: primary,

    // App Bar
    appBarTheme: const AppBarTheme(
      color: primary,
      centerTitle: true,
      elevation: 50,
    ),

    //TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

    //FloatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 15,
    ),

    //ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: primary,
      shape: const StadiumBorder(),
      elevation: 5,
    )),

    //InputForms
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ))),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // color primario
      primaryColor: primary,
      //
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 50,
      ));
}
