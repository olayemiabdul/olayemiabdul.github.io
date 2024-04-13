import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:white_snow_garden/our_work.dart';
import 'package:white_snow_garden/carousel.dart';
import 'package:white_snow_garden/gutterClearance.dart';
import 'package:white_snow_garden/hover.dart';
import 'package:white_snow_garden/responsive/responsiveness.dart';
import 'package:white_snow_garden/widget/accessibilty_theme.dart';
import 'package:white_snow_garden/widget/appBarContainer.dart';
import 'package:white_snow_garden/widget/home_widget.dart';

void main() => runApp(const WhiteSnowApp());

class WhiteSnowApp extends StatelessWidget {
  const WhiteSnowApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color hotPink =  Color(0xffD0DCDA);
    ThemeData darkTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: hotPink,
      colorScheme: ColorScheme.fromSeed(
        seedColor: hotPink,
        brightness: Brightness.light,
      ),
    );
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      // primaryColor: Colors.deepOrange,
      // //   //hot pink dark mode
      // ),
      // Create a ThemeData with hot pink as the primary color
      theme: darkTheme,

      home: const SelectionArea(child: HomePage()),
    );
  }
}
