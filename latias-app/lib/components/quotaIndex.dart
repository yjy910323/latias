import 'package:flutter/material.dart';
import 'package:latias/model/core/modular/index.dart';
import 'package:latias/model/core/modular/metric.dart';
import 'package:latias/model/core/modularDefination.dart';
import 'package:latias/model/core/quotaModular.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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

  Widget getLine() {
    List<Linesales> dataLine = [
      new Linesales(new DateTime(2019, 7, 2), 33),
      new Linesales(new DateTime(2019, 7, 3), 55),
      new Linesales(new DateTime(2019, 7, 4), 22),
      new Linesales(new DateTime(2019, 7, 5), 88),
      new Linesales(new DateTime(2019, 7, 6), 123),
      new Linesales(new DateTime(2019, 7, 7), 75),
    ];

    var seriesLine = [
      charts.Series<Linesales, DateTime>(
        data: dataLine,
        domainFn: (Linesales lines, _) => lines.time,
        measureFn: (Linesales lines, _) => lines.sale,
        id: "Lines",
      )
    ];
    //是TimeSeriesChart，而不是LineChart,因为x轴是DataTime类
    Widget line = charts.TimeSeriesChart(seriesLine);
    //line = charts.LineChart(series);
    return line;
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      this._metricsW = this._buildMetrics(this.index);
    });
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/modular");

        showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("test"),
                  Container(
                    child: ButtonBar(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.filter),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.filter),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              children: <Widget>[
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: getLine(),
                ),
                Container(
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('时间')),
                      DataColumn(label: Text('QPS')),
                      DataColumn(label: Text('较昨日')),
                      DataColumn(label: Text('差值')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('老孟')),
                        DataCell(Text('15484')),
                        DataCell(Text('12%')),
                        DataCell(Text('120')),
                      ]),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
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
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            this.index.name,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(children: _metricsW),
          ],
        ),
      ),
    );
  }
}

class Linesales {
  DateTime time;
  int sale;
  Linesales(this.time, this.sale);
}
