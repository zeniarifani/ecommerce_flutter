import 'package:ecommerce_flutter/widgets/ItemAppBar.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: ListView(
        children: [
          ItemAppBar(),
        ],
      ),
    );
  }
}