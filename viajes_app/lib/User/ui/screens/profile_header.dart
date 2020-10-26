import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:viajes_app/User/bloc/bloc_user.dart';
import '../widgets/user_info.dart';
import '../widgets/buttons_bar.dart';

class ProfileHeader extends StatelessWidget{

  BlocUser blocUser;


  @override
  Widget build(BuildContext context) {

    blocUser = BlocProvider.of<BlocUser>(context);

    return StreamBuilder(
      stream: blocUser.streamFirebase,
      // ignore: missing_return
      builder: (BuildContext context, AsyncSnapshot snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
          case ConnectionState.done:
            return null;
        }
      },
    );



   /* final title = Text(
      'Profile',
      style: TextStyle(
        fontFamily: 'Talo',
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30.0
      )
    );

    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 50.0
      ),
      child: Column(
        children: [
          Row(
            children: [
              title
            ]
          ),
          UserInfos('assets/img/cristian.jpg', 'Cristian Riffo Said', 'CristianRiffo@gmail.com'),
          ButtonsBar()
        ],
      ),
    );*/

  }

  Widget showProfileData(AsyncSnapshot snapshot){
    if(!snapshot.hasData || snapshot.hasError){
      print('no logeado');

      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0
        ),
        child: Column(
          children: [
            CircularProgressIndicator(),
            Text('no se puede cargar infomacion. Haz login')
          ]
        ),
      );
    }else {
      
      print('logeado');
      final title = Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'Talo',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0
          )
      );

      return Container(
        margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0
        ),
        child: Column(
          children: [
            Row(
                children: [
                  title
                ]
            ),
            UserInfos('assets/img/cristian.jpg', 'Cristian Riffo Said', 'CristianRiffo@gmail.com'),
            ButtonsBar()
          ],
        ),
      );
    }
  }

}