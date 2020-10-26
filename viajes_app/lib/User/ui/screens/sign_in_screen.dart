import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:viajes_app/Widgets/gradient_back.dart';
import 'package:viajes_app/Widgets/button_green.dart';
import 'package:viajes_app/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:viajes_app/platzi_trips_cupertino.dart';
class SignInScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen>{

  BlocUser blocUser;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    blocUser = BlocProvider.of<BlocUser>(context);

    return _handleCurrentSession();
  }

  Widget _handleCurrentSession(){
    return StreamBuilder(
      stream: blocUser.authStatus,
      // ignore: missing_return
      builder: (BuildContext context, AsyncSnapshot snapshot){
        // snapshot contiene la data traida de firebase
        if(!snapshot.hasData || snapshot.hasError){
          return signInGoogleUI();
        }else return PlatziTripsCupertino();
      }
    );
  }

  Widget signInGoogleUI(){

   return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack('', null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome \n This is your travel App',
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              ),
             ButtonGreen(text: 'Login with Gmail',
               onPressed: (){
               blocUser.signIn().then((User user) => print('El usuario es ${user.displayName}'));
               },
               width: 300.0,
               height: 50.0,
             )
            ]
          )
        ],
      ),
    );

  }

}