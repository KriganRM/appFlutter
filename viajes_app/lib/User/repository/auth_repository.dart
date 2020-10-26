import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_auth_api.dart';

class AuthRepository {

  final FirebaseAuthAPI _firebaseAuthApi = FirebaseAuthAPI();

  Future<User> singInFirebase() => _firebaseAuthApi.signIn();

  signOut() => _firebaseAuthApi.signOut();
}

