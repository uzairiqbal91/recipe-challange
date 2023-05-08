// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeModel _$$_RecipeModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeModel(
      recipes: Recipes.fromJson(json['recipes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RecipeModelToJson(_$_RecipeModel instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };

_$_Recipes _$$_RecipesFromJson(Map<String, dynamic> json) => _$_Recipes(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      cusine: (json['cusine'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      food: (json['food'] as List<dynamic>)
          .map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipesToJson(_$_Recipes instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'cusine': instance.cusine,
      'food': instance.food,
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Food _$$_FoodFromJson(Map<String, dynamic> json) => _$_Food(
      id: json['id'] as String,
      name: json['name'] as String,
      cateogryId: json['cateogryId'] as String,
      cuisineId: json['cuisineId'] as String,
      chef: json['chef'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cateogryId': instance.cateogryId,
      'cuisineId': instance.cuisineId,
      'chef': instance.chef,
      'imageUrl': instance.imageUrl,
    };
