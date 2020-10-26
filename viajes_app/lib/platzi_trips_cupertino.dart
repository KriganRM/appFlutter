import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:viajes_app/User/bloc/bloc_user.dart';
import 'Place/ui/screens/home_trips.dart';
import 'User/ui/screens/profile_trips.dart';
import 'Place/ui/screens/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.black12,
            items:[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.indigo,
                ),
                title: Text('')
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.indigo,
                  ),
                  title: Text('')
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.indigo,
                  ),
                  title: Text('')
              )
            ]
        ),

        // ignore: missing_return
        tabBuilder: (BuildContext context, int index){
          switch(index){
            case 0: return CupertinoTabView( builder: (BuildContext context) => HomeTrips());
            break;
            case 1: return CupertinoTabView( builder: (BuildContext context) => SearchTrips());
            break;
            case 2: return CupertinoTabView( builder: (BuildContext context){
             return BlocProvider<BlocUser>(
               bloc: BlocUser(),
               child: ProfileTrips(),
             );
            }
            );
            break;
          }
        }
      )
    );
  }

}