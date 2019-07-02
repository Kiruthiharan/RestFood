import 'package:flutter/material.dart';
import 'package:restfood/pages/food_details.dart';

class Foods extends StatefulWidget {
  @override
  _FoodsState createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  var food_list=[
    {
      "name":"Pizza",
      "image":"images/foods/pizza.jpg",
      "price":"1000",
      "calorie":"150"
    },
    {
      "name":"Burger",
      "image":"images/foods/burger.jpg",
      "price":"500",
      "calorie":"50"
    },
    {
      "name":"Pizza 2",
      "image":"images/foods/pizza.jpg",
      "price":"1000",
      "calorie":"150"
    },
    {
      "name":"Burger 2",
      "image":"images/foods/burger.jpg",
      "price":"500",
      "calorie":"50"
    }
  ];
  @override 
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: food_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context,int index){
        return SingleFood(
          name:food_list[index]['name'],
          image:food_list[index]['image'],
          price:food_list[index]['price'],
          calorie:food_list[index]['calorie'],
        );
      },
    );
  }
}

class SingleFood extends StatelessWidget {
  final name,image,price,calorie;

  SingleFood({this.name,this.image,this.price,this.calorie});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: name,
        child: Container(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
              //we are passing the details in the card to the new page we created
              builder: (context)=>FoodDetails(
                food_name: name,
                food_image: image,
                food_price: price,
                food_calorie: calorie,
              )
            )),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(name),
                  title: Text("Rs$price"),
                  subtitle: Text("Calories: $calorie"),
                ),
              ),
              child: Image.asset(image),
            ),
          ),
        ),
      ),
    );
  }
}