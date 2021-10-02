import 'package:flutter/material.dart';
import 'package:tic_tac_toe_reinvented/player_selection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: PlayerSelection(),
    );
  }
}

ThemeData appTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
);