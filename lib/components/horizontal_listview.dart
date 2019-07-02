import 'package:flutter/material.dart';

 class HorizontalList extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Container(
       height: 100.0,
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: <Widget>[
          Category(image_location:'images/categories/veg.png', image_caption:'Cat 1'),
          Category(image_location:'images/categories/veg.png', image_caption:'Cat 2'),
          Category(image_location:'images/categories/veg.png', image_caption:'Cat 3'),
          Category(image_location:'images/categories/veg.png', image_caption:'Cat 4'),
         ],
       ),
     );
   }
 }

 class Category extends StatelessWidget {
  @override

  final String image_location;
  final String image_caption;

  Category({this.image_location,this.image_caption});
  
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        child:Container(
          width: 100,
          child:ListTile(
            title: Image.asset(image_location),
            subtitle: Container(
              alignment:Alignment.topCenter,
              child:Text(image_caption ),
            ),
          )
        )
      )
    );
  }
 }