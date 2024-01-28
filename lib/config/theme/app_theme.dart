import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.amber,
  Colors.blueAccent,
  Colors.blueGrey,
  Colors.brown,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.green,
  Colors.indigo,
  Colors.orange,
  Colors.red,
  Colors.teal,

];


class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({ 
    this.selectedColor = 0,
    this.isDarkmode = false, 
    }): assert( selectedColor >= 0, 'Selected color must be greater then 0' ),
        assert( selectedColor < colorList.length, 'Selected color must be less or equal than ${colorList.length -1 }' );

      ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}