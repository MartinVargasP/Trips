import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyPlatziTrips();
  }

}

class _MyPlatziTrips extends State<PlatziTrips>{

  int indexTab = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTab = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTab,
            items: [
              BottomNavigationBarItem(
                title: Text(''),
                icon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(
                  title: Text(''),
                  icon: Icon(Icons.search)
              ),
              BottomNavigationBarItem(
                  title: Text(''),
                  icon: Icon(Icons.person)
              )
            ]
        ),
      ),
      body: widgetsChildren[indexTab],
    );
  }

}