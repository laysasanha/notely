import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:notely/core/theme/app_colors.dart';
import 'package:notely/core/theme/app_text_styles.dart';
import 'package:notely/widgets/authLinkText.dart';
import 'package:notely/widgets/custom_button.dart';
import 'package:notely/widgets/notely_app_bar.dart';

import '../core/routes/list_routes.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

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
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/computerWelcome.png',
                        height: 268,
                      ),

                      Text(
                        'World’s Safest And Largest Digital Notebook',
                        style: AppTextStyles.displayLarge.copyWith(
                          color: AppColors.title,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              Column(
                children: [
                  CustomButton(text: 'GET STARTED', onPressed: () {}),

                  SizedBox(height: 20),

                  Authlinktext(
                    text: 'Already have an account?',
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
