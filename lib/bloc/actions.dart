import 'package:flutter/foundation.dart' show immutable; 

@immutable
class AppActions{
  const AppActions();
}

@immutable class LoginActions implements AppActions{

  final String email;
  final String password;

  LoginActions({required this.email, required   this.password});

}

@immutable class NotesActions implements AppActions{
  const NotesActions();
}

