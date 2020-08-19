import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ModularPage extends StatefulWidget {
  ModularPage({Key key}) : super(key: key);

  @override
  _ModularPageState createState() => _ModularPageState();
}

class _ModularPageState extends State<ModularPage> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text("test"),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 20,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Text("test"),
                    Text("test"),
                    Text("test"),
                    Text("test"),
                    Text("test"),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: ButtonBar(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.filter_list),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: getLine(),
          ),
          DataTable(
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
        ],
      ),
    );
  }
}

class Linesales {
  DateTime time;
  int sale;
  Linesales(this.time, this.sale);
}
