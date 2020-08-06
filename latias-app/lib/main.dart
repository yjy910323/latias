import 'package:flutter/material.dart';
import 'package:latias/components/poster.dart';
import 'package:latias/components/quota.dart';

import 'model/plate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'safd'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  Future<List<Plate>> getPlates() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    List plates = <Plate>[Plate(1, "核心数据")];
    return plates;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Center(
          child: Text("asdf"),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(child: Poster()),
          Container(child: Quota()),
          Container(child: Poster()),
          Container(child: Poster()),
        ],
      ),

      // body: ScrollControllerTestRoute(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
