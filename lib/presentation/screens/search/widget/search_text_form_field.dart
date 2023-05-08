import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../data/models/recipe_model.dart';


class SearchTextFormField extends StatelessWidget {
  final TextEditingController search_controller;
  final List<Category> selectedCategorytList;
  final List<Category> selectedCuisineTypetList;
  final Function(String) onComplete;

  const SearchTextFormField(
      {Key? key,
      required this.search_controller,
      required this.selectedCategorytList,
      required this.selectedCuisineTypetList,
      required this.onComplete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: search_controller,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      onChanged: (changed) {
        onComplete(changed);
      },
      decoration: InputDecoration(
        hintText: "Search",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
          borderRadius:
              BorderRadius.circular(AppTextSizes.CIRCULAR_RADIUS_SIZE),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.5, color: AppColors.PRIMARY_COLOR),
          borderRadius:
              BorderRadius.circular(AppTextSizes.CIRCULAR_RADIUS_SIZE),
        ),
        prefixIcon: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
