import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';
import 'package:medical_pharmacy_app/widgets/categories_body.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text(
          'Categories',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Color(0xFF5CB7E6),
        excludeHeaderSemantics: true,
        elevation: 0,
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.all(SizeConfig.scaleWidth(10.0)),
        child: BodyLayout(),
      ),
    );
  }
}

