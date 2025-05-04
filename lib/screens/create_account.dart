import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notely/core/theme/app_text_styles.dart';
import 'package:notely/widgets/authLinkText.dart';
import 'package:notely/widgets/custom_button.dart';
import 'package:notely/widgets/custom_text_field.dart';
import 'package:notely/widgets/notely_app_bar.dart';

import '../core/routes/list_routes.dart';
import '../core/theme/app_colors.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarNotely(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Create a free account',
                    style: AppTextStyles.displayLarge.copyWith(color: AppColors.title),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Join Notely for free. Create and share unlimited notes with your friends.',
                    style: AppTextStyles.textMedium.copyWith(color: AppColors.text),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 22),

                  CustomTextField(
                    label: 'Full Name',
                    hinText: 'Enter your full name',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 12),

                  CustomTextField(
                    label: 'Email Address',
                    hinText: 'Enter your email address',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 12),

                  CustomTextField(
                    label: 'Password',
                    hinText: 'Enter your password',
                    controller: TextEditingController(),
                    obscureText: true,
                  ),
                  const SizedBox(height: 12),

                  CustomTextField(
                    label: 'Confirm Password',
                    hinText: 'Confirm your password',
                    controller: TextEditingController(),
                    obscureText: true,
                  ),
                ],
              ),

              Column(
                children: [
                  CustomButton(
                    text: 'Create Account',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  Authlinktext(
                    text: 'Already have an account? Log in.',
                    onTap: () {
                      context.pushNamed(AppRoutes.login.name);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
