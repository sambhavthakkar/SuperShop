

import 'package:flutter/material.dart';

import 'package:supershop/common/widgets/images/b_brand_image.dart';
import 'package:supershop/common/widgets/texts/brandTitleText_withIcon.dart';
import 'package:supershop/utils/constants/colors.dart';
import 'package:supershop/utils/constants/enums.dart';
import 'package:supershop/utils/constants/rounded_container.dart';
import 'package:supershop/utils/constants/sizes.dart';
import 'package:supershop/utils/helpers/helper_functions.dart';

import '../../../../features/shop/models/brand_model.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    Key? key,
    required this.brand,
    required this.showBorder,
    this.onTap,
  }) : super(key: key);

final BrandModel brand; 
  final bool showBorder; 
  final void Function()? onTap; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
                          onTap: onTap, 
    child: BRoundedContainer(
     padding: const EdgeInsets.all(BSizes.sm), 
     showBorder: true, 
     backgroundColor: Colors.transparent, 
     child: Row(
       children: [
    
         // brand icons
         Flexible(
           child: BCircularImage( 
             isNetWorkImage: true, 
             image: brand.imageUrl ?? '', 
             backgroundColor: Colors.transparent, 
             overlayColor: BHelperFunctions.isDarkMode(context) ? BColors.white: BColors.black,
           ),
         ), 

        
         const SizedBox(width: BSizes.spaceBtwItems / 2,), 
    
    
         // Text
         Expanded(
           child: Column(
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               BrandTitleVerifyIcon(
                 title: brand.name ?? '', 
                 brandTextSize: TextSizes.large,), 
                 Text(
                  
                  '${brand.productsCount ?? 0} products', 
                 overflow: TextOverflow.ellipsis, 
                 style: Theme.of(context).textTheme.labelMedium,)
             ],
           ),
         ), 
       ],
     ),
                      ),
                         );
  }
}


