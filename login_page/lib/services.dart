import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //Login function
  Future login(String email, String password) async {
    //Create user
    User? user = (await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;

    return user!.uid;
  }

  //Logout function

  Future logout() async {
    return await firebaseAuth.signOut();
  }
}
