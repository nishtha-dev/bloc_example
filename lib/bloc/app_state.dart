import 'package:bloc_exampls/modals.dart';
import 'package:flutter/foundation.dart';
@immutable 
class AppState {
  final bool isLoading;
  final LoginError? loginError;
  final LoginHandle? loginHandle;
  final Iterable<Note>? fetchedNotes;

  const AppState( {required this.isLoading, required this.loginError, required this.loginHandle, required this.fetchedNotes,});

  @override 
  String toString() => {
    'isLoading': isLoading,
    'loginError': loginError,
    'loginHandle': loginHandle,
    'fetchedNotes': fetchedNotes,
  }.toString();

  const AppState.empty() : isLoading = false, loginError = null, loginHandle = null, fetchedNotes = null;
}