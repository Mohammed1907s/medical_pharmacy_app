import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/screens/product_screen.dart';
import 'package:medical_pharmacy_app/utils/helpers.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';

class CategoryHome extends StatelessWidget {
  late int index;


  CategoryHome({required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(name: CATE_DATA[index]['name']!,
            categoryId:CATE_DATA[index]['id']!)));
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(CATE_DATA[index]['image']!),

          ),

        ),

        child: Text(CATE_DATA[index]['name']!,textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Mulish',fontSize: SizeConfig.scaleTextFont(13),fontWeight: FontWeight.w500),),alignment: AlignmentDirectional.bottomCenter,

        width: SizeConfig.scaleWidth(77),
        height: SizeConfig.scaleHeight(100),
      ),
    );
  }
}