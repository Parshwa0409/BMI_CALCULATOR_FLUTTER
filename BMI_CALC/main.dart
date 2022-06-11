// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'UI_Page.dart';
import 'ResultPage.dart';
import 'Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kScaffoldBackground,
        // primaryColor: kBackgroundColor,
        // sliderTheme: SliderTheme.of(context).copyWith(
        //   activeTrackColor: Colors.white,
        //   inactiveTrackColor: Colors.white12,
        //   thumbColor: Colors.red,
        //   overlayColor: Colors.pink,
        //   thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.5),
        //   overlayShape: const RoundSliderOverlayShape(overlayRadius: 22.5),
        // ),
      ),
      home: const UI_Page(),
    );
  }
}
