import 'package:flutter/material.dart';

import 'quotaIndex.dart';

class Quota extends StatefulWidget {
  Quota({Key key}) : super(key: key);

  @override
  _QuotaState createState() => _QuotaState();
}

class _QuotaState extends State<Quota> {
  ScrollController controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        QuotaIndex(controller),
        QuotaIndex(controller),
      ],
    );
  }
}
