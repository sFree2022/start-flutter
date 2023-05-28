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
          return const MyHomePage(
            title: "Dashboard",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
            minimum: const EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                Wrap(
                  children: <Widget>[
                    Card(
                      color: Colors.blue,
                      child: SizedBox(
                        width: (MediaQuery.of(context).size.width * 0.5) - 16,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text("Infections"),
                            Text("124"),
                            Text("(Today cases 1234)"),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.red,
                      child: SizedBox(
                        width: (MediaQuery.of(context).size.width * 0.5) - 16,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text("Death"),
                            Text("124"),
                            Text("(Today cases 1234)"),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: SizedBox(
                        width: (MediaQuery.of(context).size.width * 0.5) - 16,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text("Recoveries"),
                            Text("124"),
                            Text("(Today cases 1234)"),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.yellow,
                      child: SizedBox(
                        width: (MediaQuery.of(context).size.width * 0.5) - 16,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text("Critical"),
                            Text("124"),
                            Text("(Today cases 1234)"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: const Text("Affect Countries"),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: const Text("Thai"),
                            subtitle: Row(
                              children: const <Widget>[
                                Text("data1"),
                                Text("&"),
                                Text("data2"),
                              ],
                            ),
                          );
                        }))
              ],
            )));
  }
}
