import 'package:flutter/material.dart';
import 'package:task2/core/shared/widgets/onboarding_full1.dart';
import 'package:task2/core/shared/widgets/onboarding_full2.dart';
import 'package:task2/core/shared/widgets/onboarding_full3.dart';
import 'package:task2/features/auth/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex=0;
  final pageController=PageController();
  void nextPage() {
    if (currentIndex < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    }
  }

  void skip() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: PageView(
                    controller: pageController,
                    physics: const BouncingScrollPhysics(),
                onPageChanged:(index){
                  setState(() {
                    currentIndex=index;
                  }
                  );
                } ,
                children: [
                 OnBoardingFull1(
                     currentIndex: 0,
                     onNext: nextPage,
                   onSkip: skip,
                 ),

                  OnboardingFull2(onNext: nextPage,
                      currentIndex: currentIndex,
                    onSkip: skip,),
                  
                  OnboardingFull3(onSkip: nextPage,
                  currentIndex: currentIndex,),







                /*  if(currentIndex==1) ...[
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("NovaNews",
                          style: TextStyle(fontSize:40,fontWeight: FontWeight.bold,color: AppColors().primaryColor ),),
                          TextButton(onPressed: (){
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                              child: Text("skip",
                                style: TextStyle(
                                  color: Color(0xffC53030),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),))
                        ],
                      ),
                    ),
                    OnBoardingBody(image: AppImages().onBoardingPhoto[1],
                        title: OnBoardingText().title[1],
                        subTitle: OnBoardingText().title[1]),
                  ],

                  if(currentIndex==2)...[],*/
                ],
            )
                ),
                ],
              ),
        ),
      ),


        );
  }
}

