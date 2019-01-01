import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/Adrian.png', 'Adrian Yasa', '4 review · 4 photos', 'There is an amazing place is Maria'),
        Review('assets/img/Maria.png', 'Maria Nece', '1 review · 3 photos', 'There is an amazing place is Josue'),
        Review('assets/img/Josue.png', 'Josue Loti', '3 review · 6 photos', 'There is an amazing place is Adrian'),
        Review('assets/img/Lorena.png', 'Lorena Saye', '3 review · 2 photos', 'There is an amazing place is Maria'),
        Review('assets/img/Nico.png', 'Nico Cety', '3 review · 4 photos', 'There is an amazing place is Adrian'),
      ],
    );
  }
}