import 'package:flutter/material.dart';

import 'PosterIndex.dart';

class Poster extends StatefulWidget {
  var metrics;

  Poster({Key key, metrics}) : super(key: key);

  @override
  _PosterState createState() => _PosterState(metrics);
}

class _PosterState extends State<Poster> {
  var metrics;

  _PosterState(metrics);

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
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.7,
        ),
        itemBuilder: (context, index) {
          return PosterIndex();
        });
  }
}
