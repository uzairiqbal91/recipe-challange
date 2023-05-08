import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_constants.dart';


import '../../../../data/models/recipe_model.dart';
import '../../../widgets/base_widget.dart';
import 'multi_select_chip.dart';

class ModalBottomSheetContent extends StatelessWidget {
  List<Category> categoryList = [];
  List<Category> cuisieList = [];
  List<Category> selectedCategorytList = [];
  List<Category> selectedCuisineTypetList = [];
  RecipeModel recipeModel;
  final Function(List<Category>) onSelectionCategory;
  final Function(List<Category>) onSelectionCuisine;
  final Function() onApply;
  final Function() onClear;

  ModalBottomSheetContent(
      {Key? key,
      required this.recipeModel,
      required this.categoryList,
      required this.cuisieList,
      required this.selectedCategorytList,
      required this.selectedCuisineTypetList,
      required this.onSelectionCategory,
      required this.onSelectionCuisine,
      required this.onApply,
      required this.onClear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TitleWidget(
                title: AppStrings.FILTER,
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.CATEGORIES,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.merge(TextStyle(color: AppColors.TITLE_COLOR)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MultiSelectChip(
                    categoryList,
                    selectedChoices: selectedCategorytList,
                    onSelectionChanged: (selectedList) {
                      onSelectionCategory(selectedList);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStrings.CUISINES,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.merge(TextStyle(color: AppColors.TITLE_COLOR)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MultiSelectChip(
                    cuisieList,
                    selectedChoices: selectedCuisineTypetList,
                    onSelectionChanged: (selectedList) {
                      onSelectionCuisine(selectedList);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    onApply();
                  },
                  child: Text(
                    AppStrings.APPLY_FILTER,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.merge(TextStyle(color: AppColors.BUTTON_TEXT_COLOR)),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.PRIMARY_COLOR,
                    surfaceTintColor: AppColors.PRIMARY_COLOR,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          AppTextSizes.CIRCULAR_RADIUS_SIZE),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  onClear();
                },
                child: Text(
                  AppStrings.CLEAR_FILTER,
                  style: Theme.of(context).textTheme.headline6?.merge(
                      TextStyle(color: AppColors.PRIMARY_COLOR, fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
