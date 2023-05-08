
import 'package:flutter/cupertino.dart';
import 'package:recipe_challange/presentation/screens/search/widget/recipe_item_widget.dart';

import '../../../../data/models/recipe_model.dart';

class ShowRecipeList extends StatelessWidget {
  Recipes recipes;

  ShowRecipeList({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: this.recipes.food.length,
        itemBuilder: (context, index) {
          return RecipeItemWidget(
              image: this.recipes.food[index].imageUrl,
              name: this.recipes.food[index].name,
              cheff: this.recipes.food[index].chef);
        });
  }
}