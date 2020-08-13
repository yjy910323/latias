import 'package:flutter/material.dart';
import 'package:latias/model/core/modularDefination.dart';

import 'quotaIndex.dart';

@immutable
class Quota extends StatefulWidget {
  final ModularDefination modularDefination;

  Quota({Key key, this.modularDefination}) : super(key: key);

  @override
  _QuotaState createState() =>
      _QuotaState(modularDefination: this.modularDefination);
}

class _QuotaState extends State<Quota> {
  ModularDefination modularDefination;
  ScrollController _controller = ScrollController();

  _QuotaState({this.modularDefination});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          QuotaTab(this.modularDefination.metrics),
          QuotaIndex(_controller, modularDefination: this.modularDefination),
          QuotaIndex(_controller, modularDefination: this.modularDefination),
          // QuotaIndex(),
        ],
      ),
    );
  }
}

@immutable
class QuotaTab extends StatefulWidget {
  final List<String> metrics;

  QuotaTab(this.metrics, {Key key}) : super(key: key);

  @override
  _QuotaTabState createState() => _QuotaTabState(metrics: this.metrics);
}

class _QuotaTabState extends State<QuotaTab> {
  List<String> metrics = [];

  _QuotaTabState({this.metrics});

  List<Widget> _getTabs() {
    List<Widget> tabs = [];
    for (String metric in metrics) {
      tabs.add(
        Container(
          child: Text(metric),
          width: 100,
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 50,
        child: Row(
          children: this._getTabs(),
        ),
      ),
    );
  }
}
