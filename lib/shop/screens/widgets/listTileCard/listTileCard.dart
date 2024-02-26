import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/textContents.dart';
import '../circularWidgets/roundedContainer.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard(
      {super.key, required this.listTiles, required this.cardTitle});

  final Widget listTiles;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: EdgeInsets.all(Sizes.md),
      borderRadius: BorderRadius.circular(Sizes.lg),
      showBoxShadow: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Sizes.md,
              left: Sizes.lg,
            ),
            child: Text(
              cardTitle,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: Sizes.spaceBetween + 2,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          listTiles,
        ],
      ),
    );
  }
}
