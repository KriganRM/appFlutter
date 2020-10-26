import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:viajes_app/User/bloc/bloc_user.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {

  BlocUser blocUser;

  @override
  Widget build(BuildContext context) {
    
    blocUser = BlocProvider.of(context);
    
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 0.0,
          vertical: 10.0
        ),
            child: Row(
              children: <Widget>[
                //Cambiar contraseña.
                CircleButton(() => {}, Icons.vpn_key, 20, Color.fromRGBO(255, 255, 255, 0.6), true),
                //Añadir nuevo lugar.
                CircleButton(() => {}, Icons.add, 40, Color.fromRGBO(255, 255, 255, 1), false),
                //cerrar sesion.
                CircleButton(() => {blocUser.signOut()}, Icons.exit_to_app, 20, Color.fromRGBO(255, 255, 255, 0.6), true)
              ],
    ),
    );
  }
  
}