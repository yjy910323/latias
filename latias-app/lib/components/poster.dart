import 'package:flutter/material.dart';
import 'package:latias/model/core/modularDefination.dart';

import 'PosterIndex.dart';

@immutable
class Poster extends StatefulWidget {
  final ModularDefination modularDefination;

  Poster({Key key, this.modularDefination}) : super(key: key);

  @override
  _PosterState createState() =>
      _PosterState(modularDefination: this.modularDefination);
}

class _PosterState extends State<Poster> {
  final ModularDefination modularDefination;

  _PosterState({this.modularDefination});

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // padding: EdgeInsets.all(10),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: this.modularDefination.metrics.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.7,
        ),
        itemBuilder: (context, index) {
          return PosterIndex(this.modularDefination.metrics[index]);
        });
  }
}
