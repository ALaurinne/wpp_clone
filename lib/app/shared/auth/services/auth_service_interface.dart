import 'package:firebase_auth/firebase_auth.dart';

// é como models da função
abstract class IAuthService {
  Future<FirebaseUser> getUser();
  Future<FirebaseUser> setUser(String email, String password);
  Future<FirebaseUser> getEmailPasswordLogin(String email, String password);
  Future getLogout();
}
