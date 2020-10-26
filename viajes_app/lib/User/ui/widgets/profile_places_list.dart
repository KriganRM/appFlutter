import 'package:flutter/material.dart';
import 'profile_place.dart';
import '../../../Place/model/place.dart';

class ProfilePlaceList extends StatelessWidget{

  Place place = Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  Place place2 = Place('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');
  Place place3 = Place('Beach Eleeeeeeeeee', 'El aguita alaaaaaaaaa','Scenery & Photography', '548,568,211');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 10.0
      ),
      child: Column(
        children: [
          ProfilePlace('assets/img/river.jpeg', place),
          ProfilePlace('assets/img/mountain.jpeg', place2),
          ProfilePlace('assets/img/beach.jpeg', place3)
        ],
      ),
    );
  }

}