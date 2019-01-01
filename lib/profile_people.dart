import 'package:flutter/material.dart';

class ProfilePeople extends StatelessWidget{

  String pathImage = 'assets/img/people.jpg';
  String name = 'Adrian Yasa';
  String details = 'adrianyasa@gmail.com';

  ProfilePeople(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

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
                  color: Colors.white30
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 5.0,
              ),
            )
          ],
        )
    );

    final userName = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Late',
          fontSize: 17.0,
        ),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      width: 80,
      height: 80,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white,),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          )
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 10.0
      ),
      alignment: Alignment(-0.9, -0.7),
      child: Row(
        children: <Widget>[
          photo,
          Container(
            height: 80.0,
            child: userDetail,
          )
        ],
      ),
    );
  }
}