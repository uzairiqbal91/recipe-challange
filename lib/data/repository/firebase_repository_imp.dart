import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recipe_challange/core/constants/app_constants.dart';
import 'package:recipe_challange/data/models/recipe_model.dart';
import 'package:recipe_challange/domain/repository/firebase_repository.dart';

import '../../core/helpers.dart';

class FirebaseRepositoryImp extends FirebaseRepository {
  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;

  FirebaseRepositoryImp(
      {required this.firebaseFirestore, required this.firebaseAuth});

  @override
  Future<bool> signInUser(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return Future<bool>.value(userCredential.user != null);
    } on FirebaseAuthException catch (e) {
      return Future<bool>.value(false);
    }
  }

  @override
  Future<Stream<RecipeModel>> getRecipes() async {
    // TODO: implement getRecipes
    CollectionReference recipesCollection = firebaseFirestore
        .collection(AppStrings.FIREBASE_PARENT_COLLECTION_NAME);
    QuerySnapshot snapshot = await recipesCollection.get();
    List<QueryDocumentSnapshot> documents = snapshot.docs;
    final recipes = recipesCollection.snapshots().map((querySnapshot) =>
        querySnapshot.docs
            .map((e) => RecipeModel.fromJson(e.data() as Map<String, dynamic>))
            .toList()[0]);
    return recipes;
  }
}
