import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/screens/detalis_product_screen.dart';
import 'package:medical_pharmacy_app/utils/helpers.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';

class ProductScreen extends StatefulWidget {
  //static const String id = 'DetailsProductScreen';
  late String categoryId;
  late String name;

  ProductScreen({required this.name, required this.categoryId});


  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List newList = [];

  @override
  void initState() {
    log('cateId =>${widget.categoryId}');
    for (var item in listMa) {
      if (item['Category_id'] == widget.categoryId) {
        newList.add(item);
      }
    }
    print(newList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF5CB7E6),
        elevation: 0,
        title: Text(
          widget.name,
          style: TextStyle(
              color: Color(0xFFE4F9FE),
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w500,fontSize: SizeConfig.scaleTextFont(30)),
        ),
        iconTheme: IconThemeData(color: Color(0xFFE4F9FE)),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(SizeConfig.scaleHeight(15)),
        child: GridView.builder(
          itemCount: newList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: SizeConfig.scaleWidth(14.0),
              mainAxisSpacing: SizeConfig.scaleHeight(16.0)),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsProductScreen(
                        name: newList[index]['name'],
                        image1: newList[index]['image1'],
                        image2: newList[index]['image2'],
                        What_is: newList[index]['What_is'],
                        Warnings: newList[index]['Warnings'],
                        Before_taking: newList[index]['Before_taking']),
                  ),
                );
              },
              child: Card(
                color: Color(0xFF5CB7E6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      newList[index]['image'],
                      width: SizeConfig.scaleWidth(150),
                      height: SizeConfig.scaleHeight(150),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: SizeConfig.scaleWidth(8)),
                      child: Text(newList[index]['name'],textAlign: TextAlign.center,
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
          },
        ),
      ),
    );
  }
}

