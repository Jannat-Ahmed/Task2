import 'package:flutter/material.dart';

import '../../constants/theme/app_colors.dart';
import '../../constants/theme/app_images.dart';

class SkipLogoRow extends StatelessWidget {
  final VoidCallback onSkip;

  const SkipLogoRow({super.key, required this.onSkip});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(AppImages().logoNamed)),
          TextButton(onPressed: onSkip,
              child: Text("Skip",style: TextStyle(color: AppColors().secondaryColor),))
        ],
      ),
    );
  }
}
