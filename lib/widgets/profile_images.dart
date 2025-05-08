import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notely/core/theme/app_colors.dart';
import 'package:notely/core/theme/app_text_styles.dart';

class ProfileImages extends StatelessWidget {
  final String? imageUrl;
  final String name;

  const ProfileImages({super.key, this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    String initials =
        name.isNotEmpty
            ? name.split(' ').map((e) => e[0]).take(2).join().toUpperCase()
            : '';

    return CircleAvatar(
      radius: 40,
      backgroundColor: AppColors.detail,
      backgroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
      child:
          imageUrl == null
              ? Text(
                initials,
                style: AppTextStyles.displayMedium.copyWith(
                  color: AppColors.background,
                ),
              )
              : null,
    );
  }
}
