import 'package:flutter/material.dart';
import 'package:medical_pharmacy_app/screens/product_screen.dart';

import 'package:medical_pharmacy_app/utils/helpers.dart';

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView.builder(
    itemCount: CATE_DATA.length,

    itemBuilder: (context, index) {
      return Card(
        color: Color(0xFFE4F9FE),
        child: ListTile(

          leading: CircleAvatar(
            backgroundImage: AssetImage(CATE_DATA[index]['image']!),
          ),
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(name: CATE_DATA[index]['name']!,
                 categoryId:CATE_DATA[index]['id']!)));
           // Navigator.pushNamed(context, DetailsProductScreen.id);
           },
          
          title: Text(CATE_DATA[index]['name']!,style: TextStyle(fontFamily: 'Mulish',fontWeight: FontWeight.w400),),
        ),
      );
    },
  );
}
