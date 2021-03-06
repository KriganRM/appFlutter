import 'package:flutter/material.dart';


class CircleButton extends StatefulWidget {

  final VoidCallback onPressed;
  bool mini;
  var icon;
  double iconSize;
  var color;

  CircleButton(@required this.onPressed, this.icon, this.iconSize, this.color, this.mini);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CircleButton();
  }
}

class _CircleButton extends State<CircleButton>{
  
  void onPressedButton(){
    
  }
  
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: FloatingActionButton(
        backgroundColor: widget.color,
        mini: widget.mini,
        onPressed: widget.onPressed,
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: Color(0xFF4268D3)
        ),
      ),
    );
  }
  
  
}