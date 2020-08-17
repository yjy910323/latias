import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ModularPage extends StatefulWidget {
  ModularPage({Key key}) : super(key: key);

  @override
  _ModularPageState createState() => _ModularPageState();
}

class _ModularPageState extends State<ModularPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget"),
      ),
      drawer: Drawer(
        child: Center(
          child: Text("asdf"),
        ),
      ),
      body: Text("asdf"),
    );
  }
}
