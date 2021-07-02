import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:medical_pharmacy_app/screens/detalis_product_screen.dart';

import 'package:medical_pharmacy_app/utils/helpers.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';
import 'package:medical_pharmacy_app/widgets/category_home.dart';
import 'package:medical_pharmacy_app/widgets/trending_products.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'images/logobar.png',
            fit: BoxFit.contain,
            height: SizeConfig.scaleHeight(40),
            alignment: Alignment.center,
          ),
        ]),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/about_screen'),
              icon: Icon(
                Icons.info,
                size: SizeConfig.scaleHeight(30),
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(SizeConfig.scaleHeight(10)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top categories',
                style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: SizeConfig.scaleTextFont(20),
                    fontWeight: FontWeight.w600),
              ),
              TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/categories_screen'),
                  child: Text(
                    'View all',
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: SizeConfig.scaleTextFont(20),
                        fontWeight: FontWeight.w600),
                  ))
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, '/categories_screen'),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/cat.png'),
                      ),
                    ),
                    child: Text(
                      'All Categories',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: SizeConfig.scaleTextFont(13),
                          fontWeight: FontWeight.w500),
                    ),
                    alignment: AlignmentDirectional.bottomCenter,
                    width: SizeConfig.scaleWidth(77),
                    height: SizeConfig.scaleHeight(100),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.scaleWidth(10),
                ),
                CategoryHome(
                  index: 1,
                ),
                SizedBox(
                  width: SizeConfig.scaleWidth(10),
                ),
                CategoryHome(
                  index: 3,
                ),
                SizedBox(
                  width: SizeConfig.scaleWidth(10),
                ),
                CategoryHome(
                  index: 4,
                ),
                SizedBox(
                  width: SizeConfig.scaleWidth(10),
                ),
                CategoryHome(
                  index: 7,
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.scaleHeight(28),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('Trending  Products',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: SizeConfig.scaleTextFont(20),
                          fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(14),
              ),
              GridView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: SizeConfig.scaleWidth(15),
                  mainAxisSpacing: SizeConfig.scaleHeight(15),
                ),
                children: [
                  TrendingProducts(
                    index: 3,
                  ),
                  TrendingProducts(
                    index: 12,
                  ),
                  TrendingProducts(
                    index: 15,
                  ),
                  TrendingProducts(
                    index: 20,
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
