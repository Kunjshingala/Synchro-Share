import 'package:flutter/material.dart';

import '../utils/size/size_utils.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final double? toolbarHeight;

  const CommonAppBar({required this.title, super.key, this.centerTitle = false, this.toolbarHeight});

  @override
  Size get preferredSize => Size(double.maxFinite, toolbarHeight ?? appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: centerTitle,
      toolbarHeight: AppBar.preferredHeightFor(context, preferredSize),
      title: Text(title),
    );
  }
}
