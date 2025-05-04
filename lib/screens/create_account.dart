import 'package:flutter/material.dart';
import 'package:notely/core/theme/app_text_styles.dart';
import 'package:notely/widgets/authLinkText.dart';
import 'package:notely/widgets/custom_button.dart';
import 'package:notely/widgets/custom_text_field.dart';
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
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

              SizedBox(height: 20),

              CustomTextField(
                label: 'Full Name',
                hinText: 'Enter your full name',
                controller: TextEditingController(),
              ),

              SizedBox(height: 20),

              CustomTextField(
                label: 'Email Address',
                hinText: 'Enter your email address',
                controller: TextEditingController(),
              ),

              SizedBox(height: 20),

              CustomTextField(
                label: 'Password',
                hinText: 'Enter your password',
                controller: TextEditingController(),
                obscureText: true,
              ),

              SizedBox(height: 20),

              CustomTextField(
                label: 'Confirm Password',
                hinText: 'Confirm your password',
                controller: TextEditingController(),
                obscureText: true,
              ),

              SizedBox(height: 20),

              CustomButton(
                  text: 'Create Account',
                  onPressed: () {}
              ),

              SizedBox(height: 20),

              Center(
                child: Authlinktext(
                    text: 'Already have an account?',
                    onTap: (){}
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
