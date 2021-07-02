import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/utils/app_colors.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';


class OutBoardingIndicator extends StatelessWidget {
  final double marginEnd;
  final bool selected;

  OutBoardingIndicator({
    this.marginEnd = 0,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      width: SizeConfig.scaleWidth(18),
      height: SizeConfig.scaleHeight(4),
      decoration: BoxDecoration(
        color: selected ? AppColors.INDICATOR_SELECTED_COLOR : AppColors.INDICATOR_DEFAULT_COLOR,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
