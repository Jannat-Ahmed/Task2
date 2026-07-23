import 'package:flutter/material.dart';
class OnBoardingBody extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final double? titleSize;
  final double? photoHight;
  final double? photoWidth;

  final pageController=PageController();
   OnBoardingBody({super.key,
    required this.image,
    required this.title,
    required this.subTitle,
     this.titleSize,
     this.photoHight,
     this.photoWidth
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          SizedBox(height: 40,),
          Container(
            height: photoHight?? 300,
              width: photoWidth??double.infinity,
              child: Image(image: AssetImage(image),fit: BoxFit.fill,)
          ),
          SizedBox(height:40 ,),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: titleSize ?? 35,
              fontFamily: 'PTSerif', // Use the family name declared in pubspec.yaml

            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
              ),),
          ),
        ],
      ),
    );
  }
}
