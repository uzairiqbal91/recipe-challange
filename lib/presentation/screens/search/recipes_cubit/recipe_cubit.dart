import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_challange/domain/usecase/firebase_usecases/recipes/get_recipe_usecase.dart';
import 'package:recipe_challange/presentation/screens/search/recipes_cubit/recipe_state.dart';

import '../../../../data/models/recipe_model.dart';



class RecipeCubit extends Cubit<RecipeState> {
  final GetRecipeUseCase getRecipeUseCase;

  RecipeCubit({required this.getRecipeUseCase}) : super(RecipeInitial());

  Future<void> getRecipes() async {
    emit(RecipeLoading());
    try {
      final streamResponse = await getRecipeUseCase.call();
      streamResponse.listen((recipe) {
        emit(RecipeLoaded(recipe: recipe));
      });
    } on SocketException catch (_) {
      emit(RecipeFailure());
    } catch (_) {
      emit(RecipeFailure());
    }
  }

  Future<void> filterRecipe(RecipeModel recipe, String word,
      List<Category> categoreisId, List<Category> cousineId) async {
    emit(RecipeLoading());
    try {
      // searching here
      List<Food> searchedFood = recipe.recipes.food
          .where((e) =>
              e.name.toString().toLowerCase().contains(word.toLowerCase()))
          .toList();

      // filtering here
      if (categoreisId.isNotEmpty || cousineId.isNotEmpty) {
        searchedFood = searchedFood
            .where((e) =>
                categoreisId
                    .map((e) => e.id)
                    .toList()
                    .contains(e.cateogryId.toString()) ||
                cousineId
                    .map((e) => e.id)
                    .toList()
                    .contains(e.cuisineId.toString()))
            .toList();
      }

      Recipes recipes = Recipes(
          categories: recipe.recipes.categories,
          cusine: recipe.recipes.cusine,
          food: searchedFood);

      RecipeModel recipeModel = RecipeModel(recipes: recipes);

      emit(RecipeFilter(recipe: recipeModel));
    } on SocketException catch (_) {
      emit(RecipeFailure());
    } catch (_) {
      emit(RecipeFailure());
    }
  }
}
