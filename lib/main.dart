import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(const MyApp());
  // runApp(
  //   EasyLocalization(
  //       supportedLocales: const [Locale('en'), Locale('th')],
  //       path: 'assets/lang',
  //       fallbackLocale: const Locale('th'),
  //       child: const MyApp()),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Builder(
        builder: (context) {
          return MyHomePage(
            title: tr('app.title'),
          );
        },
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _onPressBtn() {
    setState(() {
      _counter = _counter + 5;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          color: Colors.amber,
          alignment: Alignment.center,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[Text("username"), Text("Username")],
                ),
                Row(
                  children: <Widget>[Text("password"), Text("Password")],
                )
              ],
            ),
          ),
        ));
  }
}
