import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/utils/app_colors.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';

class AppTextButtonOn extends StatelessWidget {
  final void Function() onPressed;
  final int currentPage;
  final String text;

  AppTextButtonOn({
    required this.onPressed,
    required this.currentPage,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
      child: ElevatedButton(
        onPressed:  onPressed,
         child: Text(currentPage != 0
             ? 'Get Started'
             : 'Next'),
         style: ElevatedButton.styleFrom(
           primary: Color(0xFF16BA93),
      minimumSize: Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
      ),
      )),
    );
  }
}
