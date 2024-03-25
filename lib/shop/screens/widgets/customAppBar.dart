import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.onPressed,
      this.showBackArrow = false,
      this.padding = 10,
      this.bgColor = Colors.transparent,
      this.surfaceColor = Colors.transparent,
      this.preferredsize = const Size.fromHeight(kToolbarHeight + 6),
      this.bottom,
      this.statusbarcolor = Colors.transparent,
      this.statusbarIconcolor = Brightness.dark,
      this.backArrowColor = Colors.black,
      this.icon = Icons.arrow_back_ios,
      this.actions});

  final List<Widget>? actions;
  final bool showBackArrow;
  final VoidCallback? onPressed;
  final Widget? title;
  final double padding;
  final Color bgColor;
  final Color surfaceColor;
  final Color backArrowColor;
  final Size preferredsize;
  final PreferredSizeWidget? bottom;
  final Color statusbarcolor;
  final Brightness statusbarIconcolor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: statusbarcolor, // <-- SEE HERE
          statusBarIconBrightness:
              statusbarIconcolor, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        backgroundColor: bgColor,
        surfaceTintColor: surfaceColor,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  color: backArrowColor,
                  // size: Sizes.defaultSpace - 4,
                ))
            : null,
        title: title,
        actions: actions,
        bottom: bottom,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => preferredsize;
}
