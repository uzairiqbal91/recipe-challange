import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {


  AuthCubit() : super(AuthInitial());

  Future<void> loggedIn() async {
    try {
      emit(Authenticated());
    } catch(_) {
      emit(UnAuthenticated());
    }
  }

}