import 'package:flutter/material.dart';
import 'review.dart';


class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review('assets/img/mota2.jpg', 'Motax2', '1 review · 5 photos', 'Vendo los medios finos hermanex!!'),
        Review('assets/img/cristian.jpg', 'Cristian', '5 review · 3 photos', 'iiiiiiiiiiiuuuuuuuuuuuuuuuuggghhh!!!!'),
        Review('assets/img/fela.jpg', 'Fela', '1 review · 5 photos', 'Sacate un jueguito eleeeee!'),
        Review('assets/img/ann.jpg', 'Ann', '2 review · 5 photos', 'Haz aprendido harto!'),
        Review('assets/img/people.jpg', 'Martincho', '1 review · 4 photos', 'Hello friends!!'),
        Review('assets/img/girl.jpg', 'Laura', '1 review · 5 photos', 'lalalalalala lala que buen tema!')
      ],
    );
  }

}