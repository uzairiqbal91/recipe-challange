abstract class FirebaseRepository {

  Future<bool> signInUser(String email , String password);
  Stream<List<String>> getAllRecipies();


}