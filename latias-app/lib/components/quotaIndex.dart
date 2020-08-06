import 'package:flutter/material.dart';

class QuotaIndex extends StatefulWidget {
  ScrollController controller;

  QuotaIndex(this.controller, {Key key}) : super(key: key);

  @override
  _QuotaIndexState createState() => _QuotaIndexState(controller, "qwerwqer");
}

class _QuotaIndexState extends State<QuotaIndex> {
  ScrollController controller;
  String title;
  _QuotaIndexState(this.controller, this.title);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      double a = controller.offset;
      if(a > 0) {
        setState(() {
          title = "xzcvzvczxv";
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        children: <Widget>[
          Container(
            child: Text("data"),
            width: 100,
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: ListView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Text("${this.title}");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
