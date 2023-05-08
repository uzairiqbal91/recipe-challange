import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_challange/data/models/recipe_model.dart';
import 'package:recipe_challange/presentation/screens/search/recipes_cubit/recipe_cubit.dart';
import 'package:recipe_challange/presentation/screens/search/recipes_cubit/recipe_state.dart';
import 'package:recipe_challange/presentation/screens/search/widget/modal_bottom_sheet_content.dart';
import 'package:recipe_challange/presentation/screens/search/widget/search_text_form_field.dart';


import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_constants.dart';
import '../../widgets/base_widget.dart';


import 'widget/multi_select_chip.dart';
import 'widget/recipe_item_widget.dart';

import 'widget/show_recipe_list_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController search_controller = TextEditingController();
  List<Category> categoryList = [];
  List<Category> cuisieList = [];
  List<Category> selectedCategorytList = [];
  List<Category> selectedCuisineTypetList = [];

  late RecipeModel recipeModel;

  @override
  void initState() {
    super.initState();

    BlocProvider.of<RecipeCubit>(context).getRecipes();
  }

  clearFilterLists() {
    selectedCategorytList = [];
    selectedCuisineTypetList = [];
  }

  @override
  void dispose() {
    if(mounted){
      search_controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: ListView(
        children: [
          TitleWidget(
            title: AppStrings.SEARCH,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: SearchTextFormField(
                      search_controller: search_controller,
                      selectedCategorytList: selectedCategorytList,
                      selectedCuisineTypetList: selectedCuisineTypetList,
                      onComplete: (changedText) {
                        if (recipeModel != null) {
                          BlocProvider.of<RecipeCubit>(context).filterRecipe(
                              recipeModel,
                              changedText,
                              selectedCategorytList,
                              selectedCuisineTypetList);
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(15))),
                          builder: (context) {
                            return ModalBottomSheetContent(
                              recipeModel: recipeModel,
                              categoryList: categoryList,
                              cuisieList: cuisieList,
                              selectedCategorytList: selectedCategorytList,
                              selectedCuisineTypetList:
                                  selectedCuisineTypetList,
                              onSelectionCategory: (selected) {
                                selectedCategorytList = selected;
                              },
                              onSelectionCuisine: (selected) {
                                selectedCuisineTypetList = selected;
                              },
                              onApply: () {
                                BlocProvider.of<RecipeCubit>(context)
                                    .filterRecipe(
                                        recipeModel,
                                        search_controller.text,
                                        selectedCategorytList,
                                        selectedCuisineTypetList);
                                Navigator.pop(context);
                              },
                              onClear: () {
                                clearFilterLists();
                                BlocProvider.of<RecipeCubit>(context)
                                    .filterRecipe(recipeModel,
                                        search_controller.text, [], []);
                                Navigator.pop(context);
                              },
                            );
                          },
                        );
                      },
                      child: Container(
                        height: double.infinity,
                        child: Icon(
                          Icons.filter_list_alt,
                          color: Colors.white,
                          size: 30,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.PRIMARY_COLOR,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<RecipeCubit, RecipeState>(
            builder: (context, recipeState) {
              if (recipeState is RecipeLoaded) {
                recipeModel = recipeState.recipe;
                categoryList = recipeState.recipe.recipes.categories;
                cuisieList = recipeState.recipe.recipes.cusine;

                return recipeState.recipe.recipes.food.length == 0
                    ? Center(
                        child: const Text(
                          AppStrings.NOT_FOUND,
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    : ShowRecipeList(
                        recipes: recipeState.recipe.recipes,
                      );
              }

              if (recipeState is RecipeFilter) {
                return recipeState.recipe.recipes.food.length == 0
                    ? Center(
                        child: const Text(
                          AppStrings.NOT_FOUND,
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    : ShowRecipeList(
                        recipes: recipeState.recipe.recipes,
                      );
              }

              if (recipeState is RecipeFailure) {
                return Center(
                  child: const Text(
                    AppStrings.SOMETHING_WENT_WRONG,
                    style: TextStyle(color: Colors.red),
                  ),
                );
              }
              if (recipeState is RecipeLoading) {
                return Center(
                  child: const CircularProgressIndicator(),
                );
              }

              return Center(
                child: const CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
    );
  }
}
