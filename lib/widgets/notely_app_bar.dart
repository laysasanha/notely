import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notely/core/theme/app_colors.dart';

class AppBarNotely extends StatelessWidget implements PreferredSizeWidget{
  final Widget? title;
  final bool centerTitle;
  final bool showBackButton;


  const AppBarNotely(
      { super.key,
        this.title,
        this.centerTitle = true,
        this.showBackButton = false,
      });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      automaticallyImplyLeading: showBackButton,
      centerTitle: centerTitle,
      title: title ?? SvgPicture.asset(
          'assets/logo/notelyLogo.svg',
          height: 20
      ),
    );
  }
}
