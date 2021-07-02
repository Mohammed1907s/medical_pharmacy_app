import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/screens/home_screen.dart';
import 'package:medical_pharmacy_app/utils/demo_data.dart';
import 'package:medical_pharmacy_app/utils/helpers.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';
import 'package:medical_pharmacy_app/widgets/app_icon_button.dart';
import 'package:medical_pharmacy_app/widgets/app_text_button.dart';
import 'package:medical_pharmacy_app/widgets/on_boarding_content.dart';
import 'package:medical_pharmacy_app/widgets/out_boarding_indicator.dart';


class OnBoardingScreen extends StatefulWidget {


  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int selectedPage) {
              print('Page: $selectedPage');
              setState(() {
                _currentPage = selectedPage;
              });
            },
            children: [
              OnBoardingContent(
                image: 'on_boarding_1',
                title: 'Welcome!',
                message: ON_BOARDING_MESSAGE,
              ),
              OnBoardingContent(
                image: 'on_boarding_2',
                title: 'View Medical & Healthcare',
                message: ON_BOARDING_MESSAGE_1,
              ),
              


            ],
          ),
          Positioned(
            bottom: SizeConfig.scaleHeight(100),
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutBoardingIndicator(
                        marginEnd: 14, selected: _currentPage == 0),
                    OutBoardingIndicator(
                      selected: _currentPage == 1,
                    ),
                  ],
                ),

                SizedBox(
                  height: SizeConfig.scaleHeight(15),
                ),
                AppTextButtonOn(
                  text:'',
                  onPressed: () {
                    if(_currentPage == 1){
                      Navigator.pushReplacementNamed(context, '/home_screen');
                    }
                      _pageController.jumpToPage(1);



                  },
                    currentPage: _currentPage
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
