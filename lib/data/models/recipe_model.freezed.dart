// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) {
  return _RecipeModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeModel {
  Recipes get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeModelCopyWith<RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeModelCopyWith<$Res> {
  factory $RecipeModelCopyWith(
          RecipeModel value, $Res Function(RecipeModel) then) =
      _$RecipeModelCopyWithImpl<$Res, RecipeModel>;
  @useResult
  $Res call({Recipes recipes});

  $RecipesCopyWith<$Res> get recipes;
}

/// @nodoc
class _$RecipeModelCopyWithImpl<$Res, $Val extends RecipeModel>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as Recipes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipesCopyWith<$Res> get recipes {
    return $RecipesCopyWith<$Res>(_value.recipes, (value) {
      return _then(_value.copyWith(recipes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecipeModelCopyWith<$Res>
    implements $RecipeModelCopyWith<$Res> {
  factory _$$_RecipeModelCopyWith(
          _$_RecipeModel value, $Res Function(_$_RecipeModel) then) =
      __$$_RecipeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipes recipes});

  @override
  $RecipesCopyWith<$Res> get recipes;
}

/// @nodoc
class __$$_RecipeModelCopyWithImpl<$Res>
    extends _$RecipeModelCopyWithImpl<$Res, _$_RecipeModel>
    implements _$$_RecipeModelCopyWith<$Res> {
  __$$_RecipeModelCopyWithImpl(
      _$_RecipeModel _value, $Res Function(_$_RecipeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$_RecipeModel(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as Recipes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeModel implements _RecipeModel {
  const _$_RecipeModel({required this.recipes});

  factory _$_RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeModelFromJson(json);

  @override
  final Recipes recipes;

  @override
  String toString() {
    return 'RecipeModel(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeModel &&
            (identical(other.recipes, recipes) || other.recipes == recipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      __$$_RecipeModelCopyWithImpl<_$_RecipeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeModelToJson(
      this,
    );
  }
}

abstract class _RecipeModel implements RecipeModel {
  const factory _RecipeModel({required final Recipes recipes}) = _$_RecipeModel;

  factory _RecipeModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeModel.fromJson;

  @override
  Recipes get recipes;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeModelCopyWith<_$_RecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Recipes _$RecipesFromJson(Map<String, dynamic> json) {
  return _Recipes.fromJson(json);
}

/// @nodoc
mixin _$Recipes {
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Category> get cusine => throw _privateConstructorUsedError;
  List<Food> get food => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesCopyWith<Recipes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesCopyWith<$Res> {
  factory $RecipesCopyWith(Recipes value, $Res Function(Recipes) then) =
      _$RecipesCopyWithImpl<$Res, Recipes>;
  @useResult
  $Res call(
      {List<Category> categories, List<Category> cusine, List<Food> food});
}

/// @nodoc
class _$RecipesCopyWithImpl<$Res, $Val extends Recipes>
    implements $RecipesCopyWith<$Res> {
  _$RecipesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? cusine = null,
    Object? food = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      cusine: null == cusine
          ? _value.cusine
          : cusine // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipesCopyWith<$Res> implements $RecipesCopyWith<$Res> {
  factory _$$_RecipesCopyWith(
          _$_Recipes value, $Res Function(_$_Recipes) then) =
      __$$_RecipesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Category> categories, List<Category> cusine, List<Food> food});
}

/// @nodoc
class __$$_RecipesCopyWithImpl<$Res>
    extends _$RecipesCopyWithImpl<$Res, _$_Recipes>
    implements _$$_RecipesCopyWith<$Res> {
  __$$_RecipesCopyWithImpl(_$_Recipes _value, $Res Function(_$_Recipes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? cusine = null,
    Object? food = null,
  }) {
    return _then(_$_Recipes(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      cusine: null == cusine
          ? _value._cusine
          : cusine // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      food: null == food
          ? _value._food
          : food // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipes implements _Recipes {
  const _$_Recipes(
      {required final List<Category> categories,
      required final List<Category> cusine,
      required final List<Food> food})
      : _categories = categories,
        _cusine = cusine,
        _food = food;

  factory _$_Recipes.fromJson(Map<String, dynamic> json) =>
      _$$_RecipesFromJson(json);

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Category> _cusine;
  @override
  List<Category> get cusine {
    if (_cusine is EqualUnmodifiableListView) return _cusine;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cusine);
  }

  final List<Food> _food;
  @override
  List<Food> get food {
    if (_food is EqualUnmodifiableListView) return _food;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_food);
  }

  @override
  String toString() {
    return 'Recipes(categories: $categories, cusine: $cusine, food: $food)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recipes &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._cusine, _cusine) &&
            const DeepCollectionEquality().equals(other._food, _food));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_cusine),
      const DeepCollectionEquality().hash(_food));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipesCopyWith<_$_Recipes> get copyWith =>
      __$$_RecipesCopyWithImpl<_$_Recipes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipesToJson(
      this,
    );
  }
}

abstract class _Recipes implements Recipes {
  const factory _Recipes(
      {required final List<Category> categories,
      required final List<Category> cusine,
      required final List<Food> food}) = _$_Recipes;

  factory _Recipes.fromJson(Map<String, dynamic> json) = _$_Recipes.fromJson;

  @override
  List<Category> get categories;
  @override
  List<Category> get cusine;
  @override
  List<Food> get food;
  @override
  @JsonKey(ignore: true)
  _$$_RecipesCopyWith<_$_Recipes> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_Category(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  const _$_Category({required this.id, required this.name});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Category(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String id, required final String name}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
mixin _$Food {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cateogryId => throw _privateConstructorUsedError;
  String get cuisineId => throw _privateConstructorUsedError;
  String get chef => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res, Food>;
  @useResult
  $Res call(
      {String id,
      String name,
      String cateogryId,
      String cuisineId,
      String chef,
      String imageUrl});
}

/// @nodoc
class _$FoodCopyWithImpl<$Res, $Val extends Food>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cateogryId = null,
    Object? cuisineId = null,
    Object? chef = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cateogryId: null == cateogryId
          ? _value.cateogryId
          : cateogryId // ignore: cast_nullable_to_non_nullable
              as String,
      cuisineId: null == cuisineId
          ? _value.cuisineId
          : cuisineId // ignore: cast_nullable_to_non_nullable
              as String,
      chef: null == chef
          ? _value.chef
          : chef // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$_FoodCopyWith(_$_Food value, $Res Function(_$_Food) then) =
      __$$_FoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String cateogryId,
      String cuisineId,
      String chef,
      String imageUrl});
}

/// @nodoc
class __$$_FoodCopyWithImpl<$Res> extends _$FoodCopyWithImpl<$Res, _$_Food>
    implements _$$_FoodCopyWith<$Res> {
  __$$_FoodCopyWithImpl(_$_Food _value, $Res Function(_$_Food) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cateogryId = null,
    Object? cuisineId = null,
    Object? chef = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_Food(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cateogryId: null == cateogryId
          ? _value.cateogryId
          : cateogryId // ignore: cast_nullable_to_non_nullable
              as String,
      cuisineId: null == cuisineId
          ? _value.cuisineId
          : cuisineId // ignore: cast_nullable_to_non_nullable
              as String,
      chef: null == chef
          ? _value.chef
          : chef // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Food implements _Food {
  const _$_Food(
      {required this.id,
      required this.name,
      required this.cateogryId,
      required this.cuisineId,
      required this.chef,
      required this.imageUrl});

  factory _$_Food.fromJson(Map<String, dynamic> json) => _$$_FoodFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String cateogryId;
  @override
  final String cuisineId;
  @override
  final String chef;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'Food(id: $id, name: $name, cateogryId: $cateogryId, cuisineId: $cuisineId, chef: $chef, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Food &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cateogryId, cateogryId) ||
                other.cateogryId == cateogryId) &&
            (identical(other.cuisineId, cuisineId) ||
                other.cuisineId == cuisineId) &&
            (identical(other.chef, chef) || other.chef == chef) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, cateogryId, cuisineId, chef, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodCopyWith<_$_Food> get copyWith =>
      __$$_FoodCopyWithImpl<_$_Food>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodToJson(
      this,
    );
  }
}

abstract class _Food implements Food {
  const factory _Food(
      {required final String id,
      required final String name,
      required final String cateogryId,
      required final String cuisineId,
      required final String chef,
      required final String imageUrl}) = _$_Food;

  factory _Food.fromJson(Map<String, dynamic> json) = _$_Food.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get cateogryId;
  @override
  String get cuisineId;
  @override
  String get chef;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_FoodCopyWith<_$_Food> get copyWith => throw _privateConstructorUsedError;
}
