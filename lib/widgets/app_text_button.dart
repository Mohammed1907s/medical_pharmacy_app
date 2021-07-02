import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/utils/app_colors.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  AppTextButton({
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.INDICATOR_SELECTED_COLOR,
          fontSize: SizeConfig.scaleTextFont(16),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
