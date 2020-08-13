import 'package:flutter/material.dart';
import 'package:latias/model/core/modular/index.dart';
import 'package:latias/model/core/modular/metric.dart';
import 'package:latias/model/core/modularDefination.dart';
import 'package:latias/model/core/quotaModular.dart';

@immutable
class QuotaIndex extends StatefulWidget {
  final ScrollController controller;
  final ModularDefination modularDefination;
  final Index index;

  QuotaIndex(this.controller, {Key key, this.modularDefination, this.index})
      : super(key: key);

  @override
  _QuotaIndexState createState() => _QuotaIndexState(controller,
      modularDefination: this.modularDefination, index: this.index);
}

class _QuotaIndexState extends State<QuotaIndex> {
  ScrollController controller;
  double _titleLeft = 0;
  ModularDefination modularDefination;
  Index index;
  List<Widget> _metricsW = [];

  _QuotaIndexState(this.controller, {this.modularDefination, this.index});

  List<Widget> _buildMetrics(Index index) {
    List<Widget> metrics = [];
    for (String metric in modularDefination.metrics) {
      Metric m = index.metrics[metric];
      if (m != null) {
        metrics.add(
          Container(
            child: Text(m.value.value.toString()),
            width: 100,
          ),
        );
      } else {
        metrics.add(
          Container(
            child: Text("/"),
            width: 100,
          ),
        );
      }
    }
    return metrics;
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      this._metricsW = this._buildMetrics(this.index);
    });
    this.controller.addListener(() {
      setState(() {
        this._titleLeft = this.controller.offset > 0 ? this.controller.offset : 0;
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
          height: 20,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                left: _titleLeft,
                width: MediaQuery.of(context).size.width + _titleLeft,
                child: Container(
                  child: Text(
                    this.index.name,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        ),
        Row(children: _metricsW),
      ],
    );
  }
}
