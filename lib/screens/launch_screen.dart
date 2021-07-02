import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/on_boarding_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:
      Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/launch.png'),
              )
            ),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('images/logo.png'),
              )
            ),
          )
        ],
      ),
    );
  }
}
