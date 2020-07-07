import 'package:firebase_auth/firebase_auth.dart';

import 'auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  //
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //
  @override
  Future<FirebaseUser> getEmailPasswordLogin(email, password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      print("entrooo");
      return user;
    } catch (e) {
      print(e.toString());
      return e;
    }
  }

  //
  @override
  Future<FirebaseUser> getUser() {
    return _auth.currentUser();
  }

  @override
  Future getLogout() {
    return _auth.signOut();
  }
}
