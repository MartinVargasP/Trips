import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFloatingActionButtonGreen();
  }

}

class _MyFloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool iconstate = false;

  Icon favorito = Icon(
    Icons.favorite_border
  );

  @override
  Widget build(BuildContext context) {

    void onPressedFav(){
      setState(() {
        if(iconstate == false){
          favorito = Icon(
              Icons.favorite
          );
          Scaffold.of(context).showSnackBar(
              SnackBar(
                  content: Text('Agregaste a tus Favoritos')
              )
          );
          iconstate = true;
        }else{
          favorito = Icon(
              Icons.favorite_border
          );
          Scaffold.of(context).showSnackBar(
              SnackBar(
                  content: Text('Eliminaste de tus Favoritos')
              )
          );
          iconstate = false;
        }
      });
    }

    return  FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: favorito
    );
  }

}