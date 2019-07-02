import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:restfood/components/horizontal_listview.dart';
import 'package:restfood/components/foods.dart';
import 'package:restfood/components/drawer.dart';
import 'package:restfood/components/appBar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel=new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images:[
          AssetImage('images/meat.jpg'),
          AssetImage('images/pizza.jpg')
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );

    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: ListView(
        children: <Widget>[
          //image carousel
          image_carousel,

          //padding widget
          Padding(padding: EdgeInsets.all(10.0),child:Text('Category'),),
          
          //horizontal list
          HorizontalList(),

          Padding(padding: EdgeInsets.all(10.0),child:Text('Popular Foods'),),

          //grid view
          Container(
            height: 400.0,
            child: Foods(),
          )

        ],
      ),
    );
  }
}