import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notely/core/theme/app_colors.dart';
import 'package:notely/core/theme/app_text_styles.dart';

class AppBarNotely extends StatelessWidget implements PreferredSizeWidget{
  final String? titleText;
  final bool centerTitle;
  final bool showBackButton;
  final Widget? leadingIcon;
  final List<Widget>? actionIcons;

  const AppBarNotely(
      { super.key,
        this.titleText,
        this.centerTitle = true,
        this.showBackButton = false,
        this.leadingIcon,
        this.actionIcons,
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
      leading: leadingIcon,
      actions: actionIcons,
      title: titleText != null
        ? Text(
        titleText!,
        style: AppTextStyles.displayMedium.copyWith(
          color: AppColors.title
        )
      )
        : SvgPicture.asset(
          'assets/logo/notelyLogo.svg',
          height: 20
      ),
    );
  }
}
