import 'package:flutter/material.dart';
import 'package:latias/model/core/modular/index.dart';
import 'package:latias/model/core/modularDefination.dart';
import 'package:latias/model/core/quotaModular.dart';
import 'package:latias/model/dto/quotaModularResp.dart';
import 'package:latias/mock/modular.dart' as mock;

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
  Future<QuotaModular> _quotaModularF;

  _QuotaState({this.modularDefination});

  @override
  void initState() {
    super.initState();
    this._quotaModularF = getModular();
  }

  Future<QuotaModular> getModular() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    QuotaModularResp quotaResp = QuotaModularResp.fromJson(mock.quotaModular);
    return quotaResp.data;
  }

  List<Widget> _build(QuotaModular quotaModular) {
    print(quotaModular.toJson());
    List<Widget> widgets = [];
    widgets.add(QuotaTab(this.modularDefination.metrics));
    for (Index index in quotaModular.indexes) {
      widgets.add(
        // Container(
        //   child: QuotaIndex(_controller, modularDefination: this.modularDefination, index: index),
        // )
        QuotaIndex(_controller, modularDefination: this.modularDefination, index: index),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: FutureBuilder(
        future: _quotaModularF,
        builder: (BuildContext context, AsyncSnapshot<QuotaModular> snapshot) {
          if (!snapshot.hasData) {
            return Text(snapshot.connectionState.toString());
          }
          QuotaModular quotaModular = snapshot.data;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: this._build(quotaModular),
          );
        },
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
