import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/utils/app_colors.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';

class OnBoardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String message;

  OnBoardingContent({
    required this.image,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.scaleHeight(208)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('images/$image.jpg' ),
          SizedBox(height: SizeConfig.scaleHeight(75),),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
            child: Text(
              title,
              style: TextStyle(

                  color: AppColors.ON_BOARDING_TITLE_COLOR,
                  fontSize: SizeConfig.scaleTextFont(30),
                  fontWeight: FontWeight.w300,fontFamily: 'Yellowtail'),
            ),
          ),
          SizedBox(
            height: SizeConfig.scaleHeight(17),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(34)),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Mulish',
                color: AppColors.ON_BOARDING_MESSAGE_COLOR,
                fontSize: SizeConfig.scaleTextFont(20),
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
