import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardItem extends StatefulWidget {
  const CardItem({super.key});

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 359.69,
     height:158.03,
     child: Stack(
      children: [Image.asset("assets/cardimage.png"),
      Positioned(
        top:15,
        left:25,
        child: Text("Get Special Discount",style: TextStyle(color:Color(0xff9B9B9B),fontSize: 15.51,fontWeight: FontWeight.bold ),)),
        Positioned(
           top:45,
        left:25,
          child: Text("up to 75%",style: TextStyle(color:Color(0xffF5F5F5),fontSize: 34.9,fontWeight: FontWeight.w500 ))),

          Positioned(
             bottom:20,
             left:25,
            child: Container(
              alignment: Alignment.center,
              width: 116.34,
              height: 25.21,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.82),
              ),
              child: Text("Claim Voucher",style: TextStyle(color: Color(0xff010E16),fontSize: 11.63,fontWeight: FontWeight.w500),),
            ),
          )
      
      ],
       ),


    );
  }
}