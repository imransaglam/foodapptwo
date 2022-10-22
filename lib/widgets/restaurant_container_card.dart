import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantCard extends StatefulWidget {
  final String foodimg;
  final String foodtext;
  final String foodrank;
  final String foodprice;
  
  const RestaurantCard({super.key, required this.foodimg, required this.foodtext, required this.foodrank, required this.foodprice,});

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
         //color: Colors.purple,
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
                    Row(
                      children: [
                        Container(
                         // color:Colors.orange,
                          height: 30,width:155,child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",style: TextStyle(color: Color(0xff9B9B9B),fontSize: 12,fontWeight: FontWeight.w400),)),
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Container(
                width: 80,
                height: 30,
                //color: Colors.grey,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 22.3,
                      width: 22.3,
                      margin: EdgeInsets.only(right:3 ),
                      decoration: BoxDecoration(
                     color: Colors.white,
                      borderRadius: BorderRadius.circular(2.62),
                      boxShadow: [BoxShadow(
          color: Colors.grey.shade300,
          offset: const Offset(0, 3.0),
          blurRadius: 3.0,
          spreadRadius: 2.0,
        )],
                      
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(bottom:9),
                          child: Icon(
                            Icons.minimize,
                            size: 13.12,
                          ),
                      ),
                    ),
                     Container(
                      alignment: Alignment.center,
                    height: 22.3,
                      width: 22.3,
                      margin: EdgeInsets.only(right:3 ),
                      child:Text("0",style: TextStyle(fontSize: 18.36,color: Color(0xff010E15)),) ,
                     
                    ),
                    Container(
                      alignment: Alignment.center,
                     height: 22.3,
                      width: 22.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2.62),
                        boxShadow: [BoxShadow(
          color: Colors.grey.shade300,
          offset: const Offset(0, 3.0),
          blurRadius: 3.0,
          spreadRadius: 2.0,
        )],
                      ),
                      
                      child: Icon(
                          Icons.add,
                          size: 13.12,
                      ),
                    ),
                    

                  ],
                ),
              ),
                        )
                      ],
                    ),
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