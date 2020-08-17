import 'package:flutter/material.dart';
import 'package:latias/pages/homePage.dart';
import 'package:latias/pages/modularPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        if (settings.name == '/') {
          builder = (BuildContext context) => MyHomePage(title: 'safd');
        } else if (settings.name == '/modular') {
          builder = (BuildContext context) => ModularPage();
        } else {
          String param = settings.name.split('/')[2];
          builder = (BuildContext context) => MyHomePage(title: 'safd');
        }

        return new MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
