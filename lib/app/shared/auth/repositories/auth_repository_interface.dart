import 'package:firebase_auth/firebase_auth.dart';

// é como models da função
abstract class IAuthRepository {
  Future<FirebaseUser> getUser();
  Future<FirebaseUser> getEmailPasswordLogin(String email, String password);
  Future getLogout();
}
