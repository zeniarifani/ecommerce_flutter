import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/widgets.dart';

class HomeAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.brown,
      padding: EdgeInsets.all(25),
      child: Row (
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.orange[50],
            ),
          Padding(
            padding: EdgeInsets.only(
             left:20,
            ),
            child:Text(
             "nusantara shop",
             style: TextStyle (
                 fontSize:70,
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
             ),
            ),
           ),
          Spacer(),
        badges.Badge(
              badgeStyle: badges.BadgeStyle(
                badgeColor: Colors.red,
                padding: EdgeInsets.all(20),
              ),
              badgeContent: Text(
                "3",
                style:TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context,"cartPage");
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 100,
                  color: Colors.white,
                ),
              )
            ),
       ],
      ),
    );
  }
}