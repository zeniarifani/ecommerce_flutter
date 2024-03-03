import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
         for(int i = 1;i<5;i++)
          Container(
           margin: EdgeInsets.symmetric(horizontal: 10),
           padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
           decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
           ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/$i.jpg", 
                 width: 200, 
                 height: 200,
              ),
              Text(
                "Tas",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.deepPurple,
                ),
              ),
            ],

          ),
        ),
      ],
      ),
    );
  }
}