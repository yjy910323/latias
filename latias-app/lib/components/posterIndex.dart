import 'package:flutter/material.dart';

@immutable
class PosterIndex extends StatefulWidget {
  final String metric;

  PosterIndex(this.metric, {Key key}) : super(key: key);

  @override
  _PosterIndexState createState() => _PosterIndexState(this.metric);
}

class _PosterIndexState extends State<PosterIndex> {
  String metric = "***";

  _PosterIndexState(this.metric);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.green)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this.metric,
                style: TextStyle(color: Colors.grey, fontSize: 16)),
            Text(
              "18264398",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.arrow_upward),
                Text("4.2%"),
                Icon(Icons.trending_up),
                Text("3002"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
