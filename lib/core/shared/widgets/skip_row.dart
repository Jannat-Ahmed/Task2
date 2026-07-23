import 'package:flutter/material.dart';

import '../../constants/theme/app_colors.dart';

class SkipRow extends StatelessWidget {
  final VoidCallback onSkip;
  const SkipRow({super.key, required this.onSkip});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: onSkip,
            child: Text("Skip",style: TextStyle(color: AppColors().secondaryColor),))
      ],
    );
  }
}
