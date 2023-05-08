import '../../../../data/models/recipe_model.dart';
import '../../../repository/firebase_repository.dart';

class GetRecipeUseCase {
  final FirebaseRepository repository;

  GetRecipeUseCase({required this.repository});

  Future<Stream<RecipeModel>> call() {
    return repository.getRecipes();
  }

}