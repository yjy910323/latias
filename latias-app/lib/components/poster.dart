import 'package:flutter/material.dart';

import 'PosterIndex.dart';

class Poster extends StatefulWidget {
  Poster({Key key}) : super(key: key);

  @override
  _PosterState createState() => _PosterState();
}

class _PosterState extends State<Poster> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return PosterIndex();
          }),
    );
  }
}
