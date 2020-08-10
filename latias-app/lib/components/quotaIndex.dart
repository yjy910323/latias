import 'package:flutter/material.dart';

class QuotaIndex extends StatefulWidget {
  ScrollController controller;
  QuotaIndex(this.controller, {Key key}) : super(key: key);

  @override
  _QuotaIndexState createState() => _QuotaIndexState(controller);
}

class _QuotaIndexState extends State<QuotaIndex> {
  ScrollController controller;
  String title = "assadf";
  double _titleLeft = 0;

  _QuotaIndexState(this.controller);

  @override
  void initState() {
    super.initState();
    this.controller.addListener(() {
      setState(() {
        this._titleLeft =
            this.controller.offset > 0 ? this.controller.offset : 0;
        this.title = "asadfasdf";
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
                child: Text("asdf"),
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
