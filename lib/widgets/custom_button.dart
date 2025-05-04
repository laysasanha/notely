import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notely/core/theme/app_colors.dart';
import 'package:notely/core/theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton(
    {
      super.key,
      required this.text,
      required this.onPressed
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          backgroundColor: AppColors.detail,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          )
      ),

        onPressed: onPressed,
        child:
          Text(
            text,
            style: AppTextStyles.displayMedium,
          ),
      ),
    );
  }
}
