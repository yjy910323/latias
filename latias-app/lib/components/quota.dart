import 'package:flutter/material.dart';

import 'quotaIndex.dart';

class Quota extends StatefulWidget {
  Quota({Key key}) : super(key: key);

  @override
  _QuotaState createState() => _QuotaState();
}

class _QuotaState extends State<Quota> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          QuotaTab(),
          QuotaIndex(_controller),
          QuotaIndex(_controller),
          // QuotaIndex(),
        ],
      ),
    );
  }
}

class QuotaTab extends StatefulWidget {
  QuotaTab({Key key}) : super(key: key);

  @override
  _QuotaTabState createState() => _QuotaTabState();
}

class _QuotaTabState extends State<QuotaTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 50,
        child: Row(
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
      ),
    );
  }
}
