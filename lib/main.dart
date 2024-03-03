import 'package:ecommerce_flutter/pages/CartPage.dart';
import 'package:ecommerce_flutter/pages/ItemPage.dart';
import 'package:ecommerce_flutter/pages/homepage.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        scaffoldBackgroundColor: Colors.red[50],
      ),
      routes: {
          "/" : (context)=>HomePage(),
          "cartPage": (context) => CartPage(),
          "itemPage": (context)=> ItemPage(),
        },
    );
  }
}