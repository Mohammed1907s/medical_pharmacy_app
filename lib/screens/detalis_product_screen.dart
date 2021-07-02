import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:medical_pharmacy_app/utils/helpers.dart';
import 'package:medical_pharmacy_app/utils/size_config.dart';
import 'package:medical_pharmacy_app/widgets/app_icon_button.dart';


class DetailsProductScreen extends StatefulWidget {
  late String name ;
  late String image1;
  late String image2;
  late String What_is;
  late String Warnings;
  late String Before_taking;

  DetailsProductScreen(
      {required this.name,
      required this.image1,
      required this.image2,
      required this.What_is,
      required this.Warnings,
      required this.Before_taking});

  @override
  _DetailsProductScreenState createState() => _DetailsProductScreenState();
}

class _DetailsProductScreenState extends State<DetailsProductScreen>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int _currentPage = 0;

  late TabController _tabController;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (_selectedTabIndex != _tabController.index) {
        setState(() {
          _selectedTabIndex = _tabController.index;
        });
        print('Index: ${_tabController.index}');
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF5CB7E6),
        elevation: 0,
        title: Text('${widget.name}',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.scaleTextFont(30))),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: SizeConfig.scaleHeight(15),
          ),
          Container(
            height: SizeConfig.scaleHeight(200),
            width: SizeConfig.scaleWidth(200),
            child: Stack(
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
                    Image.asset(widget.image1),
                    Image.asset(widget.image2),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.scaleWidth(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Visibility(
                        visible: _currentPage == 0 ? true : false,
                        child: Container(
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            onPressed: () => _pageController.jumpToPage(1),
                            shape: BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26))),
                            child: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _currentPage == 1 ? true : false,
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: FloatingActionButton(
                            onPressed: () => _pageController.jumpToPage(0),
                            shape: BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26))),
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.scaleHeight(10),
          ),
          TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.teal,
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.label,
            onTap: (int selectedTabIndex) {
              // print("Tab: $selectedTabIndex");
              setState(() {
                _selectedTabIndex = selectedTabIndex;
              });
            },
            labelStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                fontFamily: 'Mulish',
                fontSize: SizeConfig.scaleTextFont(20)),
            unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontFamily: 'Mulish',
                fontSize: SizeConfig.scaleTextFont(20)),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color(0xFF5CB7E6)),
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Description"),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Instructions"),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
                physics: AlwaysScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  Padding(
                    padding: EdgeInsets.all(SizeConfig.scaleHeight(15)),
                    child: Text(
                      '${widget.What_is}',
                      style: TextStyle(
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          fontSize: SizeConfig.scaleTextFont(16)),
                    ),
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.all(SizeConfig.scaleHeight(15)),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(SizeConfig.scaleHeight(8)),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              border: Border.all(color: Color(0xFF5CB7E6)),
                            ),
                            child: ExpansionTile(
                              childrenPadding:
                                  EdgeInsets.all(SizeConfig.scaleHeight(10)),
                              expandedAlignment: Alignment.bottomLeft,
                              title: Text(
                                'Warnings',
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.scaleTextFont(20)),
                              ),
                              children: [
                                Text(
                                  '${widget.Warnings}',
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      fontSize: SizeConfig.scaleTextFont(16)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(SizeConfig.scaleHeight(8)),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              border: Border.all(color: Color(0xFF5CB7E6)),
                            ),
                            child: ExpansionTile(
                              childrenPadding:
                                  EdgeInsets.all(SizeConfig.scaleHeight(10)),
                              expandedAlignment: Alignment.bottomLeft,
                              title: Text(
                                'Before taking this medicine',
                                style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.scaleTextFont(20)),
                              ),
                              children: [
                                Text(
                                  '${widget.Before_taking}',
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      fontSize: SizeConfig.scaleTextFont(16)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
