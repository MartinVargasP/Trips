import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = 'assets/img/people.jpg';
  String name = 'Varuna Yasas';
  String details = '1 review 5 photos';
  String comment = 'There is an amazing place is Sri Lanka';

  Review(this.pathImage,this.name,this.details,this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Late',
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
        ),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
          right: 2.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 12,
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: 'Late',
                fontSize: 13.0,
                color: Color(0xFFa3a5a7)
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5.0,
            ),
            child: Row(
              children: <Widget>[
                star,
                star,
                star,
                star,
                star
              ],
            ),
          )
        ],
      )
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Late',
          fontSize: 17.0
        ),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80,
      height: 80,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        Container(
          margin: EdgeInsets.only(
            top: 15.0
          ),
          child: userDetail,
        )
      ],
    );
  }
}