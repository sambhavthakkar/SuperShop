
import 'package:flutter/material.dart';

import 'package:supershop/common/widgets/grid_layout/grid_layout.dart';
import 'package:supershop/common/widgets/shimmers/shimmer.dart';

class BrandsShimmer extends StatelessWidget {
  const BrandsShimmer({
    Key? key,
  this.itemCount = 4,
  }) : super(key: key);

final int itemCount; 
  @override
  Widget build(BuildContext context) {
    return GridLayout( 
      mainAxisExtent: 80, 
      itemCount: itemCount, 
      itemBuilder: (_, __ ) =>  const TShimmerEffect(width: 300, height: 80),
    );
  }
}
