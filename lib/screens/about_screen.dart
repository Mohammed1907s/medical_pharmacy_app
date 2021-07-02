import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('images/about.png')),
          ),
        ),
        Positioned(
          bottom: SizeConfig.scaleHeight(10),
          right: 0,
          left: 0,
          child: Text('Elancer - GGateWay',style: TextStyle(fontFamily: 'Mulish',fontSize: SizeConfig.scaleTextFont(20),fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,

          ),
        ),
      ]),
    );
  }
}
