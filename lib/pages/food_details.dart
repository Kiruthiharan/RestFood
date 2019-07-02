import 'package:flutter/material.dart';
import 'package:restfood/components/appBar.dart';
import 'package:restfood/components/drawer.dart';

class FoodDetails extends StatefulWidget {
  final food_name,food_image,food_price,food_calorie;

  FoodDetails({this.food_name,this.food_image,this.food_price,this.food_calorie});

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Image.asset(widget.food_image),
            ),
          ),
          Container(
            child: ListTile(
              leading: Text(widget.food_name,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
              title: Row(
                children: <Widget>[
                  Expanded(
                    child: Text("Price: Rs. ${widget.food_price}"),
                  ),
                  Expanded(
                    child: Text("Calories: ${widget.food_calorie}"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: (){},
                    color: Colors.blue,
                    ),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}