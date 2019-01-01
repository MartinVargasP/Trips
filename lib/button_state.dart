import 'package:flutter/material.dart';

class ButtonState extends StatelessWidget{

  Icon iconButton = Icon(
    Icons.mail_outline,
    color: Colors.indigo,
  );

  Color colorState = Colors.white;

  double leftButton = 30.0;
  double topButton = 20.0;

  String msg = '';

  bool sizeButton = true;

  ButtonState(this.iconButton,this.colorState,this.leftButton,this.sizeButton);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: topButton,
        left: leftButton,
      ),
      child: FloatingActionButton(
        child: iconButton,
        mini: sizeButton,
        backgroundColor: colorState,
        onPressed: (){
          colorState = Colors.white54;
        },
      ),
    );
  }
}