import 'package:flutter/material.dart';

class App extends StatelessWidget {
  // Create the initilization Future outside of `build`:

  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // buttonColor: Palette.darkerGrey,
        // canvasColor: Palette.lightGrey,
        // accentColor: Palette.lightBlue,
        // primaryColor: Palette.darkerGrey,
        buttonTheme: const ButtonThemeData(
          // buttonColor: Palette.darkerGrey,
          textTheme: ButtonTextTheme.primary,
        ),
        colorScheme: const ColorScheme.light(
          primary: Colors.black, //flat button text color
        ),
      ),
      navigatorKey: _navigatorKey,
    );
  }
}
