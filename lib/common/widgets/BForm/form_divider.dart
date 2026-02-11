
import 'package:flutter/material.dart';
import 'package:supershop/utils/constants/colors.dart';
import 'package:supershop/utils/helpers/helper_functions.dart';


class BFormDivider extends StatelessWidget {
   const BFormDivider({
    Key? key,
    required this.dark, 
    // ignore: non_constant_identifier_names
    required this.DividerText,
     TextStyle? style, 
  }) : super(key: key);

  final bool dark;
  // ignore: non_constant_identifier_names
  final String DividerText; 

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Flexible(
          child: Divider(color: dark ? BColors.darkGrey: BColors.grey,
          thickness: 1.5, indent: 60, endIndent: 5,),
        ),
        Text(DividerText), 
         Flexible(
          child: Divider(color: dark ? BColors.darkGrey: BColors.grey,
          thickness: 1.5, indent: 5, endIndent: 60,),
        )
      ]
    );
  }
}
