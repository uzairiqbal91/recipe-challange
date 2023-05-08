import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_challange/domain/usecase/firebase_usecases/authentication/sign_in_usecase.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SignInUseCase signInUseCase;

  LoginCubit({required this.signInUseCase}) : super(LoginInitial());

  Future<void> signInUser(
      {required String email, required String password}) async {
    emit(LoginLoading());
    try {
      bool statusTrue = await signInUseCase.call(email, password);
      if (statusTrue) {
        emit(LoginSuccess());
      } else {
        emit(LoginFailure());
      }
    } on SocketException catch (_) {
      emit(LoginFailure());
    } catch (_) {
      emit(LoginFailure());
    }
  }
}
