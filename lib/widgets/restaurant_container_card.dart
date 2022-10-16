import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantCard extends StatefulWidget {
  final String foodimg;
  final String foodtext;
  final String foodrank;
  final String foodprice;
  const RestaurantCard({super.key, required this.foodimg, required this.foodtext, required this.foodrank, required this.foodprice});

  @override
  State<RestaurantCard> createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
        width: 371,
        height: 100,
        margin: EdgeInsets.only(bottom:10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19.39),
          boxShadow: [BoxShadow(
          color: Colors.grey.shade300,
          offset: const Offset(0, 3.0),
          blurRadius: 3.0,
          spreadRadius: 2.0,
        )],
          color: Colors.white
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Image.asset(widget.foodimg,height: 96.95,width: 96.95,)),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(widget.foodtext,style: TextStyle(color:Color(0xff010E16),fontSize: 14,fontWeight: FontWeight.w500),),
                        SizedBox(width: 10,),
                        Image.asset("assets/star.png",height: 17.78,width: 17.78,),
                        SizedBox(width: 3,),
                        Text(widget.foodrank,style: TextStyle(color: Color(0xffB3B3B3),fontSize: 12.44,fontWeight: FontWeight.w500),),
                       
                      ],
                    ),
                     SizedBox(height: 7,),
                    Container(height: 30,width:155,child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",style: TextStyle(color: Color(0xff9B9B9B),fontSize: 12,fontWeight: FontWeight.w400),)),
                    SizedBox(height: 10,),
                    Text("\$ " + widget.foodprice,style:TextStyle(color: Color(0xff010E16),fontSize: 17,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
             
          ],

        ),
      ),
    );
  }
}