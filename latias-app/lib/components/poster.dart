import 'package:flutter/material.dart';

import 'PosterIndex.dart';

@immutable
class Poster extends StatefulWidget {
  final List<String> metrics;

  Poster({Key key, this.metrics}) : super(key: key);

  @override
  _PosterState createState() => _PosterState(metrics: this.metrics);
}

class _PosterState extends State<Poster> {
  final List<String> metrics;

  _PosterState({this.metrics});

  @override
  void initState() {
    super.initState();
    // print("metrics:" + metrics);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // padding: EdgeInsets.all(10),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: this.metrics.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.7,
        ),
        itemBuilder: (context, index) {
          return PosterIndex(this.metrics[index]);
        });
  }
}
