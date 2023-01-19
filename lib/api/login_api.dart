import 'package:bloc_exampls/modals.dart';

@immutable
abstract class LoginApiProtocol{
  const LoginApiProtocol();

  Future<LoginHandle?> login({
    required String password,
    required String email,
  });
}

@immutable
class LoginApi implements LoginApiProtocol{
  const LoginApi._sharedInstance();
  static const LoginApi _shared = LoginApi._sharedInstance();
  factory LoginApi.instance() => _shared;
  
  @override
  Future<LoginHandle?> login({
    required String password,
    required String email,
  })=> Future.delayed(const Duration(seconds: 2), ()=> email=="foo@bar.com" && password=="foobar").then((isLoggedIn) => isLoggedIn? const LoginHandle.foobar(): null);
}