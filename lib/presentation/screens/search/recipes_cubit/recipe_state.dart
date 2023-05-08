


import '../../../../data/models/recipe_model.dart';


abstract class RecipeState  {
  const RecipeState();
}

class RecipeInitial extends RecipeState {
  @override
  Object get props => [];
}

class RecipeLoading extends RecipeState {
  @override
  Object get props => [];
}

class RecipeLoaded extends RecipeState {
  final RecipeModel recipe;

  RecipeLoaded({required this.recipe});
  @override
  Object get props => recipe;
}

class RecipeFilter extends RecipeState {
  final RecipeModel recipe;
  RecipeFilter({required this.recipe});
  @override
  Object get props => recipe;
}

class RecipeFailure extends RecipeState {
  @override
  Object get props => [];
}




