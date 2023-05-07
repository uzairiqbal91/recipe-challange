import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../app_resources/app_colors.dart';
import '../../app_resources/app_constants.dart';
import '../widgets/base_widget.dart';
import '../widgets/recipe_item_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController search_controller = TextEditingController();
  List<String> categoryList = [];
  List<String> recipeTypeList = [];
  List<String> selectedCategorytList = [];
  List<String> selectedRecipeTypetList = [];

  @override
  void initState() {
    super.initState();

    categoryList.add("Breakfast");
    categoryList.add("Lunch");
    categoryList.add("Dinner");


    recipeTypeList.add("Salad");
    recipeTypeList.add("Egg");
    recipeTypeList.add("Cakes");
    recipeTypeList.add("Chicken");
    recipeTypeList.add("Meals");
    recipeTypeList.add("Vegetables");
    
    
   
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: ListView(
        children: [
          TitleWidget(
            title: "Search",
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
                    child: TextFormField(
                      controller: search_controller,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Search",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.grey), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(
                              AppTextSizes.CIRCULAR_RADIUS_SIZE),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1.5, color: AppColors.PRIMARY_COLOR),
                          borderRadius: BorderRadius.circular(
                              AppTextSizes.CIRCULAR_RADIUS_SIZE),
                        ),
                        prefixIcon: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
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
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
                          builder: (context) {
                            return Wrap(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      TitleWidget(
                                        title: "Filter",
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),


                                      Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Category",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  ?.merge(TextStyle(
                                                  color: AppColors.TITLE_COLOR)),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          MultiSelectChip(
                                            categoryList,
                                            onSelectionChanged: (selectedList) {
                                              setState(() {
                                                selectedCategorytList = selectedList;
                                              });
                                            },
                                          ),




                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Recipe Type",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6
                                                  ?.merge(TextStyle(
                                                  color: AppColors.TITLE_COLOR)),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          MultiSelectChip(
                                            recipeTypeList,
                                            onSelectionChanged: (selectedList) {
                                              setState(() {
                                                selectedRecipeTypetList = selectedList;
                                              });
                                            },
                                          ),




                                        ],
                                      ),

                                      SizedBox(height: 30,),

                                      Container(
                                        height: 60,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // if (formKey.currentState!.validate()) {
                                            //   Navigator.pushNamedAndRemoveUntil(
                                            //       context, AppRoutes.SEARCH_SCREEN, (route) => false);
                                            //
                                            //
                                            // } else {
                                            //
                                            // }
                                          },
                                          child: Text(
                                            'Apply Filter',
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

                                      SizedBox(height: 10,),

                                      Text(
                                        'Clear Filter',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.merge(TextStyle(color: AppColors.PRIMARY_COLOR,fontSize: 18)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
        const RecipeItemWidget(image: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1peCUyMHNhbGFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",name: "Easy homemade beef burger",subname: "Salad",userimage: "https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",username: "James Spader"),

        const RecipeItemWidget(image:"https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80", name: "Half boiled egg sandwich",subname: "kasjkdmjkasndkjasnkjdnsajkndkjasndjkasnjkdnaskjdnjksandkjasndkjsa",userimage:"https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",username: "Alice Fala", ),
       const RecipeItemWidget(image: "https://images.unsplash.com/photo-1623595119708-26b1f7300075?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=383&q=80",name:"Fried tomatoes mixed with egg" ,subname: "Sweet",userimage:"https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" ,username: "Agnes",),
          const RecipeItemWidget(image: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1peCUyMHNhbGFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",name: "Easy homemade beef burger",subname: "Salad",userimage: "https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",username: "James Spader"),

          const RecipeItemWidget(image:"https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80", name: "Half boiled egg sandwich",subname: "kasjkdmjkasndkjasnkjdnsajkndkjasndjkasnjkdnaskjdnjksandkjasndkjsa",userimage:"https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",username: "Alice Fala", ),
          const RecipeItemWidget(image: "https://images.unsplash.com/photo-1623595119708-26b1f7300075?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=383&q=80",name:"Fried tomatoes mixed with egg" ,subname: "Sweet",userimage:"https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" ,username: "Agnes",),
          const RecipeItemWidget(image: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1peCUyMHNhbGFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",name: "Easy homemade beef burger",subname: "Salad",userimage: "https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",username: "James Spader"),

          const RecipeItemWidget(image:"https://images.unsplash.com/photo-1512058564366-18510be2db19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80", name: "Half boiled egg sandwich",subname: "kasjkdmjkasndkjasnkjdnsajkndkjasndjkasnjkdnaskjdnjksandkjasndkjsa",userimage:"https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",username: "Alice Fala", ),
          const RecipeItemWidget(image: "https://images.unsplash.com/photo-1623595119708-26b1f7300075?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=383&q=80",name:"Fried tomatoes mixed with egg" ,subname: "Sweet",userimage:"https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" ,username: "Agnes",),

        ],
      ),
    );
  }



}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {required this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach((item) {
      bool isSelected = selectedChoices.contains(item);
      choices.add(Container(

        padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 5),

        child: ChoiceChip(
          selectedColor: AppColors.PRIMARY_COLOR,

          label: Text(item , style: TextStyle(color: isSelected ? Colors.white : Colors.black),),
          selected: isSelected,
          padding: EdgeInsets.symmetric(horizontal: 20),
          labelPadding: EdgeInsets.all(10.0),
          shadowColor: Colors.grey[60],
          backgroundColor: AppColors.CHIP_UNSELECTED_COLOR,

          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        children: _buildChoiceList(),
      ),
    );
  }
}




