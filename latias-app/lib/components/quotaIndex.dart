import 'package:flutter/material.dart';
import 'package:latias/model/core/modularDefination.dart';
import 'package:latias/model/core/quotaModular.dart';
import 'package:latias/model/dto/quotaModularResp.dart';

import 'mock/modular.dart' as mock;

@immutable
class QuotaIndex extends StatefulWidget {
  final ScrollController controller;
  final ModularDefination modularDefination;

  QuotaIndex(this.controller, {Key key, this.modularDefination})
      : super(key: key);

  @override
  _QuotaIndexState createState() =>
      _QuotaIndexState(controller, modularDefination: this.modularDefination);
}

class _QuotaIndexState extends State<QuotaIndex> {
  ScrollController controller;
  String title = "****";
  double _titleLeft = 0;
  ModularDefination modularDefination;
  QuotaModular quotaModular;

  _QuotaIndexState(this.controller, {this.modularDefination});

  Future<QuotaModular> getModular() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    QuotaModularResp quotaResp = QuotaModularResp.fromJson(mock.quotaModular);
    return quotaResp.data;
  }

  @override
  void initState() {
    super.initState();
    this.controller.addListener(() {
      setState(() {
        this._titleLeft =
            this.controller.offset > 0 ? this.controller.offset : 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: _titleLeft,
                child: Text(this.title),
              )
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("qps"),
              width: 100,
            ),
            Container(
              child: Text("成功率"),
              width: 100,
            ),
            Container(
              child: Text("499率"),
              width: 100,
            ),
            Container(
              child: Text("请求时长"),
              width: 100,
            ),
            Container(
              child: Text("data"),
              width: 100,
            ),
            Container(
              child: Text("data"),
              width: 100,
            ),
            Container(
              child: Text("data"),
              width: 100,
            ),
          ],
        ),
      ],
    );
  }
}
