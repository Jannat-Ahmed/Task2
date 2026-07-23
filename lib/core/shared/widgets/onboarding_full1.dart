import 'package:flutter/material.dart';
import 'package:task2/core/constants/theme/app_images.dart';
import 'package:task2/core/constants/theme/onboarding_text.dart';
import 'package:task2/core/shared/widgets/custombutton.dart';
import 'package:task2/core/shared/widgets/indicator.dart';
import 'package:task2/core/shared/widgets/onboardingbody.dart';
import 'package:task2/core/shared/widgets/skip_row.dart';

class OnBoardingFull1 extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final int currentIndex;
  const OnBoardingFull1({
    super.key,
    required this.currentIndex,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardingBody(
            image: AppImages().onBoardingPhoto[0],
            photoHight: 300,
            title: OnBoardingText().title[0],
            titleSize: 50,
            subTitle: OnBoardingText().subtitle[0]
        ),

        Indicator(currentIndex: 0),
        SizedBox(height: 15,),
        CustomButton(text: "Next",onPressed: onNext,),
        SkipRow(onSkip: onSkip),
      ],
    );
  }
}
