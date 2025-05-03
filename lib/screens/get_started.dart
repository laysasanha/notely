import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notely/core/theme/app_colors.dart';
import 'package:notely/core/theme/app_text_styles.dart';
import 'package:notely/widgets/AuthLinkText.dart';
import 'package:notely/widgets/custom_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical: 16),
           child: Center(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 SvgPicture.asset(
                   'assets/logo/notelyLogo.svg',
                   height: 20
                 ),

                 Spacer(),

                 Column(
                   children: [
                   Image.asset(
                     'assets/images/computerWelcome.png',
                     height: 268,
                   ),

                   Text(
                     'World’s Safest And Largest Digital Notebook',
                     style: AppTextStyles.displayLarge.copyWith(
                         color: AppColors.title
                     ),
                     textAlign: TextAlign.center,
                   ),
                  ],
                 ),

                 Spacer(),

                 Column(
                   children: [
                     CustomButton(
                         text: 'GET STARTED',
                         onPressed: (){}
                     ),

                     SizedBox(height: 20),

                     Authlinktext(
                         text: 'Already have an account?',
                         onTap: (){}
                     ),
                   ],
                 ),
               ],
             ),
           ),
         ),
      ),
    );
  }
}
