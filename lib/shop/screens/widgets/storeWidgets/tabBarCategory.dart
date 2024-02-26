import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
              top:Sizes.spaceBetweenSections,
              left:Sizes.spaceBetweenSections,
              right:Sizes.spaceBetweenSections,
              bottom:Sizes.spaceBetweenSections,
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
