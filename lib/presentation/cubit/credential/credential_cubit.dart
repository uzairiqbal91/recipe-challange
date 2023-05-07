import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_challange/domain/usecase/firebase_usecases/authentication/sign_in_usecase.dart';

import 'credential_state.dart';

class CredentialCubit extends Cubit<CredentialState> {
  final SignInUseCase signInUseCase;

  CredentialCubit({required this.signInUseCase}) : super(CredentialInitial());

  Future<void> signInUser({required String email, required String password}) async {
    emit(CredentialLoading());
    try {
      bool statusTrue = await signInUseCase.call(email,password);
      if(statusTrue){
        emit(CredentialSuccess());
      }
      else
        {
          emit(CredentialFailure());
        }

    } on SocketException catch(_) {
      emit(CredentialFailure());
    } catch (_) {
      emit(CredentialFailure());
    }
  }


}