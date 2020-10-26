import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  void onPressedGreen(){

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
        onPressed: onPressedGreen,
      backgroundColor: Color(0XFF11DA53),
      mini: true,
      tooltip: 'fav',
      child: Icon(
        Icons.favorite_border
      ),
    );
  }


}