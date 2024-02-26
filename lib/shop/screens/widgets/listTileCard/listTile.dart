import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/textContents.dart';

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      required this.leadingIcon,
      required this.title,
      this.trailingIcon,
      this.onTap});

  final IconData leadingIcon;
  final String title;
  final IconData? trailingIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        leadingIcon,
        size: Sizes.defaultSpace - 2,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: Icon(
        trailingIcon,
        size: Sizes.defaultSpace - 4,
      ),
      onTap: onTap,
    );
  }
}
