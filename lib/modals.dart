import 'package:flutter/rendering.dart';

class LoginHandle{
  final String token;
  const LoginHandle({required this.token});

  const LoginHandle.foobar() : token="foobar";
   
   @override
   bool operator == (covariant LoginHandle other) => token == other.token;

   @override
   int get hashCode() => token.hashCode();

   @override
    String toString() {
     return "LoginHandle (token =$token)" ;
   
   }
}

enum LoginError{
  invalidError
}

@immutable
class Note{
  final String title;
  
  const Note({required this.title})

  @override
  String toString() => "Note (title =$title)" ;


}

final mockNotes = Iterable.generate(3, (i)=> Note(title: 'Note ${i + 1}'));

