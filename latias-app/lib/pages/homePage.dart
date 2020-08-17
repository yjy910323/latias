import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:latias/components/poster.dart';
import 'package:latias/components/quota.dart';
import 'package:latias/model/core/modularDefination.dart';
import 'package:latias/model/core/plateDefination.dart';
import 'package:latias/model/dto/plateResp.dart';
import 'package:latias/model/dto/platesResp.dart';

import 'package:latias/mock/plate.dart' as mock;

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
    // print(getPlates());
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
      body: FutureBuilder(
          future: getPlate(1),
          builder:
              (BuildContext context, AsyncSnapshot<PlateDefination> snapshot) {
            if (!snapshot.hasData) {
              return Text(snapshot.connectionState.toString());
            }
            List<ModularDefination> modularDefinations =
                snapshot.data.modularDefinations;
            return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: modularDefinations.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: modularDefinations[index].type == 'POSTER'
                        ? Poster(modularDefination: modularDefinations[index])
                        : Quota(modularDefination: modularDefinations[index]),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
