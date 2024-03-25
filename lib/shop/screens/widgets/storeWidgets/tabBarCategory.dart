import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../productWidgets/productWidget.dart';
import 'myGridView.dart';

class TabBarCategory extends StatelessWidget {
  const TabBarCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Sizes.defaultSpace,
              left: Sizes.defaultSpace,
              right: Sizes.defaultSpace,
              bottom: Sizes.defaultSpace,
            ),
            child: MyGridView(
              itemCount: 10,
              itemBuilder: (p0, p1) => const ProductWidget(),
            ),
          )
        ],
      ),
    );
  }
}
