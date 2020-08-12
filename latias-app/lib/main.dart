import 'package:flutter/material.dart';
import 'package:latias/components/poster.dart';
import 'package:latias/components/quota.dart';

import 'mock/plate.dart' as mock;
import 'model/core/modularDefination.dart';
import 'model/core/plateDefination.dart';
import 'model/dto/plateResp.dart';
import 'model/dto/platesResp.dart';

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
  Future<PlateDefination> getPlate(int plateId) async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    PlateResp plateResp = PlateResp.fromJson(mock.plate);
    return plateResp.data;
  }

  Future<List<PlateDefination>> getPlates() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    PlatesResp platesResp = PlatesResp.fromJson(mock.plates);
    return platesResp.data;
  }

  @override
  void initState() {
    super.initState();
    print(getPlates());
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
      // body: ListView(
      //   physics: BouncingScrollPhysics(),
      //   children: <Widget>[
      //     Container(child: Poster()),
      //     Container(child: Quota()),
      //     Container(child: Poster()),
      //     Container(child: Poster()),
      //   ],
      // ),
      body: FutureBuilder(
          future: getPlate(1),
          builder: (BuildContext context, AsyncSnapshot<PlateDefination> snapshot) {
            List<ModularDefination> modularDefinations = snapshot.data.modularDefinations;
            return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: modularDefinations.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: modularDefinations[index].type == 'POSTER'
                        ? Poster(metrics: modularDefinations[index].metrics)
                        : Quota(),
                  );
                });
          }),
      // body: ScrollControllerTestRoute(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
