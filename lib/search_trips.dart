import 'package:flutter/material.dart';
import 'gradient_profile.dart';

class SearchTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientProfile('Search'),
        Container(
          alignment: Alignment(-0.0, -0.4),
          child: Icon(
            Icons.search,
            color: Colors.white,
            size: 50.0,
          ),
        )
      ],
    );
  }
}