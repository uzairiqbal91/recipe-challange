

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../data/models/recipe_model.dart';

class MultiSelectChip extends StatefulWidget {
  final List<Category> reportList;
  final List<Category> selectedChoices;
  final Function(List<Category>) onSelectionChanged;

  MultiSelectChip(this.reportList, {required this.onSelectionChanged,required this.selectedChoices});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {


  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach((item) {
      bool isSelected = widget.selectedChoices.contains(item);
      choices.add(Container(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
        child: ChoiceChip(
          selectedColor: AppColors.PRIMARY_COLOR,
          label: Text(
            item.name,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
          selected: isSelected,
          padding: EdgeInsets.symmetric(horizontal: 20),
          labelPadding: EdgeInsets.all(10.0),
          shadowColor: Colors.grey[60],
          backgroundColor: AppColors.CHIP_UNSELECTED_COLOR,
          onSelected: (selected) {
            setState(() {
              widget.selectedChoices.contains(item)
                  ? widget.selectedChoices.remove(item)
                  : widget.selectedChoices.add(item);
              widget.onSelectionChanged(widget.selectedChoices);
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