import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:recipe_challange/domain/repository/firebase_repository.dart';

import '../../app/helpers.dart';

class FirebaseRepositoryImp extends FirebaseRepository{
  final FirebaseFirestore firebaseFirestore;
  final FirebaseAuth firebaseAuth;
  final FirebaseStorage firebaseStorage;

  FirebaseRepositoryImp({required this.firebaseStorage, required this.firebaseFirestore, required this.firebaseAuth});

  @override
  Stream<List<String>> getAllRecipies() {
    // TODO: implement getAllRecipies
    throw UnimplementedError();
  }

  @override
  Future<bool> signInUser(String email, String password) async {
    try {
      if (email!.isNotEmpty || password!.isNotEmpty) {
       UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
        return  Future<bool>.value(userCredential.user != null);
      } else {
        return Future<bool>.value(false);
        print("fields cannot be empty");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {

        Helpers.showToast("User not found");
        return Future<bool>.value(false);
      } else if (e.code == "wrong-password") {

        Helpers.showToast("Invalid email or password");
        return Future<bool>.value(false);
      }
    }
    return Future<bool>.value(false);
  }






}