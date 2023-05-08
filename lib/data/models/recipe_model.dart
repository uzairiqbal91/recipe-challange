// To parse this JSON data, do
//
//     final recipeModel = recipeModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

RecipeModel recipeModelFromJson(String str) => RecipeModel.fromJson(json.decode(str));

String recipeModelToJson(RecipeModel data) => json.encode(data.toJson());

@freezed
class RecipeModel with _$RecipeModel {
  const factory RecipeModel({
    required Recipes recipes,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);
}

@freezed
class Recipes with _$Recipes {
  const factory Recipes({
    required List<Category> categories,
    required List<Category> cusine,
    required List<Food> food,
  }) = _Recipes;

  factory Recipes.fromJson(Map<String, dynamic> json) => _$RecipesFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class Food with _$Food {
  const factory Food({
    required String id,
    required String name,
    required String cateogryId,
    required String cuisineId,
    required String chef,
    required String imageUrl,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
