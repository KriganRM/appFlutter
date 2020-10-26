import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:viajes_app/User/repository/auth_repository.dart';

class BlocUser implements Bloc{

  final AuthRepository _authRepository = AuthRepository();

  //Flujo de datos streams
  //Stream - Firebase
  //screamController
  Stream<User> streamFirebase =  FirebaseAuth.instance.authStateChanges();

  Stream<User> get authStatus => streamFirebase;

  //Casos de uso
  //1. SignIn a la aplicacion Google

  Future<User> signIn (){
    return _authRepository.singInFirebase();
  }
  signOut() {
    _authRepository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}