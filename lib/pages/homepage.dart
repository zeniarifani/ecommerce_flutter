import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_flutter/widgets/CategoriesWidget.dart';
import 'package:ecommerce_flutter/widgets/ItemsWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/HomeAppBar.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(children:[
        HomeAppBar(),
        SizedBox(height: 30), 
        Container(
          height: 100,
          padding: EdgeInsets.only(top:15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight:Radius.circular(60),
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
          ),
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(30),
              ),
              child: Row(
                children:[
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 30,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.brown[400],
                          size: 50,
                        ), 
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.camera_alt,
                    size: 50,
                    color: Colors.brown[400],
                  ),
                ],
              ),
            ),
            Container(
                  alignment: Alignment.centerLeft, 
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                ),
                child: Text(
                  "Kategori",
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[400],
                  ),
                ),
            ),


            CategoriesWidget(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical:20,horizontal:10),
              child: Text(
                "Populer",
                 style: TextStyle(
                 fontSize: 50,
                 fontWeight: FontWeight.bold,
                 color: Colors.brown,
                ),
              ),
            ),
            ItemsWidget(),
          ],
          ),
        ),
      ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70, 
        color:Colors.brown,
       items: [
        Icon(
          Icons.home,
          size:50,
          color: Colors.white,
        ),
         Icon(
          CupertinoIcons.cart_fill,
          size:50,
          color: Colors.white,
        ),
         Icon(
          Icons.list,
          size:50,
          color: Colors.white,
        ),
       ], 
      ),
    );
  }
}