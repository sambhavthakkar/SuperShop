

import 'package:flutter/material.dart';
import 'package:supershop/common/widgets/custom_shapes/containers/circular_container.dart';

import 'package:supershop/utils/constants/colors.dart';
import 'package:supershop/utils/helpers/helper_functions.dart';

class BChoiceChip extends StatelessWidget {
  const BChoiceChip({
    Key? key,
    required this.text,
    required this.selected,
    this.onSelected,
  }) : super(key: key);
final String text; 
final bool selected; 
final void Function(bool)? onSelected; 
  @override
  Widget build(BuildContext context) {
    final isColor = BHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label:  isColor ? const SizedBox() : Text(text),
         selected: selected, 
         labelStyle:  TextStyle(color: selected ? BColors.white : null), 
         onSelected: onSelected, 
       avatar: isColor 
       ? BCircularContainer(width: 50, height: 50, 
       backgroundColor:  BHelperFunctions.getColor(text)! ) : null,  
         shape: isColor  ? const CircleBorder() : null,
         labelPadding: isColor? const EdgeInsets.all(0) : null, 
         padding: isColor ? const EdgeInsets.all(0): null, 
         selectedColor: Colors.green,
         backgroundColor:BHelperFunctions.getColor(text), 
         ),
    );
  }
}
