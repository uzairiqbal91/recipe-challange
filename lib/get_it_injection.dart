import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:recipe_challange/presentation/cubit/auth/auth_cubit.dart';
import 'package:recipe_challange/presentation/cubit/credential/credential_cubit.dart';
import 'domain/repository/firebase_repository.dart';
import 'domain/repository/firebase_repository_imp.dart';
import 'domain/usecase/firebase_usecases/authentication/sign_in_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Cubits
  sl.registerFactory(
        () => AuthCubit(),
  );

  sl.registerFactory(
        () => CredentialCubit(
      signInUseCase: sl.call(),
    ),
  );



  // Use Cases
  // Authentication
  sl.registerLazySingleton(() => SignInUseCase(repository: sl.call()));



  sl.registerLazySingleton<FirebaseRepository>(() => FirebaseRepositoryImp(firebaseFirestore: sl.call(), firebaseAuth: sl.call(), firebaseStorage: sl.call()));
  // Externals

  final firebaseFirestore = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;
  final firebaseStorage = FirebaseStorage.instance;

  sl.registerLazySingleton(() => firebaseFirestore);
  sl.registerLazySingleton(() => firebaseAuth);
  sl.registerLazySingleton(() => firebaseStorage);
}