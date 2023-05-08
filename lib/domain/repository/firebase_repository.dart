import 'package:recipe_challange/data/models/recipe_model.dart';

abstract class FirebaseRepository {

  Future<bool> signInUser(String email , String password);
  Future<Stream<RecipeModel>> getRecipes();


}