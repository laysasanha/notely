import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notely/widgets/notely_app_bar.dart';

import '../core/routes/list_routes.dart';
import '../core/theme/app_text_styles.dart';
import '../widgets/authLinkText.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarNotely(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Login',
                    style: AppTextStyles.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Sign in to your account and start managing your notes.',
                    style: AppTextStyles.textMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  CustomTextField(
                    label: 'Email Address',
                    hinText: 'Enter your email address',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 20),

                  CustomTextField(
                    label: 'Password',
                    hinText: 'Enter your password',
                    controller: TextEditingController(),
                    obscureText: true,
                  ),
                ],
              ),

              Column(
                children: [
                  CustomButton(
                    text: 'Login',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  Authlinktext(
                    text: "Don't have an account? Sign up now.",
                    onTap: () {
                      context.pushNamed(AppRoutes.createAccount.name);
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
