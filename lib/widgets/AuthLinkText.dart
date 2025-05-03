import 'package:flutter/cupertino.dart';
import 'package:notely/core/theme/app_colors.dart';
import 'package:notely/core/theme/app_text_styles.dart';

class Authlinktext extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const Authlinktext(
    { super.key,
      required this.text,
      required this.onTap,
    }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: AppTextStyles.displaySmall.copyWith(
          color: AppColors.detail,
        )
      ),
    );
  }
}
