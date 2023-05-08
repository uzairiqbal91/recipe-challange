import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get_it/get_it.dart';
import 'package:recipe_challange/domain/usecase/firebase_usecases/recipes/get_recipe_usecase.dart';
import '../../domain/repository/firebase_repository.dart';
import '../../data/repository/firebase_repository_imp.dart';
import '../../domain/usecase/firebase_usecases/authentication/sign_in_usecase.dart';
import '../../presentation/screens/login/login_cubit/login_cubit.dart';
import '../../presentation/screens/search/recipes_cubit/recipe_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Cubits

  sl.registerFactory(
    () => LoginCubit(
      signInUseCase: sl.call(),
    ),
  );

  sl.registerFactory(
    () => RecipeCubit(
      getRecipeUseCase: sl.call(),
    ),
  );

  // Use Cases
  // Authentication
  sl.registerLazySingleton(() => SignInUseCase(repository: sl.call()));
  sl.registerLazySingleton(() => GetRecipeUseCase(repository: sl.call()));

  sl.registerLazySingleton<FirebaseRepository>(() => FirebaseRepositoryImp(
      firebaseFirestore: sl.call(), firebaseAuth: sl.call()));
  // Externals

  final firebaseFirestore = FirebaseFirestore.instance;
  final firebaseAuth = FirebaseAuth.instance;

  sl.registerLazySingleton(() => firebaseFirestore);
  sl.registerLazySingleton(() => firebaseAuth);
}
