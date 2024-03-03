import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartItemsSamples extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(children:[
      for(int i = 1;i<4;i++)
       Container(
          height: 200,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
         padding: EdgeInsets.all(5),
         decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
            Radio(
              value:"",
              groupValue: "",
              activeColor: Colors.brown,
              onChanged: (index) {},
            ),
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(right: 15),
              child: Image.asset("images/$i.jpg"),
            ),
            Padding(
              padding:EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text(
                    "Tas Rotan",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  Text(
                    "\Rp50.000,00",
                  style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                  ),
                  ),
                ],
              ),
            ),

            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 50,
                  ),
                  Row(children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:[
                          BoxShadow(
                          color: Colors. brown.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                        ),
                      ]),
                      child: 
                      Icon(
                        CupertinoIcons.plus,
                      size:50,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("01",
                        style:TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                        ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow:[
                          BoxShadow(
                          color: Colors. brown.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                        ),
                      ]),
                      child: 
                      Icon(
                        CupertinoIcons.minus,
                      size:50,
                      ),
                    ),
                  ],
                  ),
                ],
              )
            )

        ],),
      ),
    ]
    );
  }
}