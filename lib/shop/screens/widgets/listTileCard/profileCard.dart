import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../constants/imageContents.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/textContents.dart';
import '../circularWidgets/roundedContainer.dart';
import '../circularWidgets/roundedImg.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard(
      {super.key,
      this.cardColor = Colors.transparent,
      this.onTap,
      required this.leading,
      required this.title,
      this.subtitle,
      this.trailing});

  final Color cardColor;
  final void Function()? onTap;
  final Widget leading;
  final String title;
  final String? subtitle;
  final IconData? trailing;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      bgColor: cardColor,
      padding: EdgeInsets.symmetric(vertical: Sizes.md, horizontal: Sizes.sm),
      borderRadius: BorderRadius.circular(Sizes.lg),
      showBoxShadow: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: onTap,
            leading: leading,
            title: Text(title,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w800)),
            subtitle: Text(
              subtitle!,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: Colors.black),
            ),
            trailing: Icon(
              trailing,
              color: Colors.black,
              size: Sizes.defaultSpace - 4,
            ),
          ),
        ],
      ),
    );
  }
}
