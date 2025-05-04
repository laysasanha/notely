import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notely/core/theme/app_text_styles.dart';
import 'package:notely/widgets/notely_app_bar.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarNotely(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Text(
                'Create a free account',
                style: AppTextStyles.displayLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 6),
              Text(
                'Join Notely for free. Create and share unlimited notes with your friends.',
                style: AppTextStyles.textMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
