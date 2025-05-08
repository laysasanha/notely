import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notely/core/theme/app_text_styles.dart';
import 'package:notely/widgets/custom_button.dart';
import 'package:notely/widgets/notely_app_bar.dart';

import '../core/routes/list_routes.dart';
import '../core/theme/app_colors.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNotely(
        titleText: 'test',
        centerTitle: true,

        leadingIcon: IconButton(icon: Icon(Icons.menu), onPressed: () {
          context.pushNamed(AppRoutes.profile.name);
        }),

        actionIcons: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/computersCreateNote.png',
                height: 268,
              ),
              const SizedBox(height: 100),
              Text(
                'Create Your First Note',
                textAlign: TextAlign.center,
                style: AppTextStyles.displayLarge.copyWith(
                  color: AppColors.title,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Add a note about anything (your thoughts on climate change, or your history essay) and share it with the world.',
                textAlign: TextAlign.center,
                style: AppTextStyles.textMedium.copyWith(
                  color: AppColors.text,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Create A Note',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
