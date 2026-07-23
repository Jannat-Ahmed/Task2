import 'package:flutter/material.dart';
import 'package:task2/core/constants/theme/app_images.dart';
import 'package:task2/core/constants/theme/onboarding_text.dart';
import 'package:task2/core/shared/widgets/custombutton.dart';
import 'package:task2/core/shared/widgets/indicator.dart';
import 'package:task2/core/shared/widgets/onboardingbody.dart';
import 'package:task2/core/shared/widgets/skip_logo_row.dart';

class OnboardingFull2 extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final int currentIndex;

  const OnboardingFull2({super.key,
    required this.onNext,
    required this.currentIndex,
  required this.onSkip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50,left: 10,right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SkipLogoRow(onSkip: onSkip),
          OnBoardingBody(
              image: AppImages().onBoardingPhoto[1],
              photoWidth:250,
              photoHight: 250,
              title: OnBoardingText().title[1],
              subTitle: OnBoardingText().subtitle[1]
          ),
          CustomButton(text: "Continue to Feed",
            onPressed: onNext,
          ),
          SizedBox(height: 20,),
          Indicator(currentIndex: 1),
        ],
      ),
    );
  }
}
