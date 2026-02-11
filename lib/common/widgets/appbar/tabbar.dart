
import 'package:flutter/material.dart';
import 'package:supershop/utils/constants/colors.dart';

import 'package:supershop/utils/device/device_utlity.dart';
import 'package:supershop/utils/helpers/helper_functions.dart';


class BTappBar extends StatelessWidget implements PreferredSizeWidget {
  const BTappBar({
    Key? key, required this.tabs,
   
  }) : super(key: key);

final List<Widget> tabs; 



  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
  
  return Material( 
    color: dark ? BColors.black : BColors.white,
 
    child: TabBar( 
      tabAlignment: TabAlignment.start,
      isScrollable: true,  
      unselectedLabelColor: BColors.darkGrey,
      tabs: tabs, 
      indicatorColor: dark ? BColors.white : BColors.primary,
    )
  );  
  
  }

  @override
  
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
  
}
