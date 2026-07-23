import 'package:flutter/cupertino.dart';
import 'package:task2/core/constants/theme/app_colors.dart';

class Indicator extends StatelessWidget {
  final int currentIndex;
  const Indicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(3,
            (index)=>Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 8,
              width: currentIndex==index? 40:8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentIndex==index?
                    AppColors().primaryColor
                    :AppColors().secondaryColor,
              ),
            )),
      ),
    );
  }
}
