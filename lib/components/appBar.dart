import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return 
      AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        title: Text("RestFood"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),onPressed: null,),
          IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: null,)
        ],
    );
  }
}