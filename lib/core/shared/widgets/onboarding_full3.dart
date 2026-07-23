import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/core/constants/theme/app_images.dart';
import 'package:task2/core/constants/theme/onboarding_text.dart';
import 'package:task2/core/shared/widgets/custombutton.dart';
import 'package:task2/core/shared/widgets/indicator.dart';
import 'package:task2/core/shared/widgets/onboardingbody.dart';
import 'package:task2/core/shared/widgets/skip_logo_row.dart';

class OnboardingFull3 extends StatelessWidget {
  final int currentIndex;
  final VoidCallback onSkip;
  const OnboardingFull3({super.key, required this.onSkip, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkipLogoRow(onSkip: onSkip),
            OnBoardingBody(image: AppImages().onBoardingPhoto[2],
                title: OnBoardingText().title[2],
                subTitle: OnBoardingText().subtitle[2],
            ),
            ListTile(
              leading: Image.asset(AppImages().onBoardingIcons[0]),
              title:Text("Curated by AI",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),) ,
              subtitle: Text("Sophisticated filtering fo high-value insights."),
            ),
            ListTile(
              leading: Image.asset(AppImages().onBoardingIcons[1]),
              title:Text("Ultra-Fast",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),) ,
              subtitle: Text("Intelligence delivered at the speed og through.",),
            ),
            Indicator(currentIndex: currentIndex),
            CustomButton(text: "Get Started",onPressed: onSkip,),
          ],
        ),
      ),
    );
  }
}
