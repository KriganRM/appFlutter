import 'package:flutter/material.dart';
import '../../../Widgets/floating_action_button_green.dart';

class CardImage extends StatelessWidget {

  String pathImage;

  CardImage(this.pathImage);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 350.0,
        width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 25.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(
              pathImage
            )
        ),
            borderRadius: BorderRadius.circular(10),
        //shape: BoxShape.rectangle,
        boxShadow: [ BoxShadow(
          color: Colors.black38,
          blurRadius: 15.0,
          offset: Offset(0.0, 0.7)
        )
        ]
      )
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }

}