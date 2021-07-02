import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/screens/detalis_product_screen.dart';
import 'package:medical_pharmacy_app/utils/helpers.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';

class TrendingProducts extends StatelessWidget {
  late int index;


  TrendingProducts({required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsProductScreen(
                name: listMa[index]['name'],
                image1: listMa[index]['image1'],
                image2: listMa[index]['image2'],
                What_is: listMa[index]['What_is'],
                Warnings: listMa[index]['Warnings'],
                Before_taking: listMa[index]['Before_taking']),
          ),
        );
      },
      child: Card(
        color: Colors.cyan.shade700,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              listMa[index]['image'],
              width: SizeConfig.scaleWidth(150),
              height: SizeConfig.scaleHeight(150),
            ),
            Padding(
              padding:  EdgeInsets.only(right: SizeConfig.scaleWidth(8)),
              child: Text(listMa[index]['name'],textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFFE4F9FE),
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.scaleTextFont(18))),
            )
          ],
        ),
      ),
    );
  }
}
