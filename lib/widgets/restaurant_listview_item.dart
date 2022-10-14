import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantListviewItem extends StatefulWidget {
  final String img;
  final String headline;
  final String point;
  final String minute;
  final String kilometer;
  const RestaurantListviewItem({super.key, required this.img, required this.headline, required this.point, required this.minute, required this.kilometer});

  @override
  State<RestaurantListviewItem> createState() => _RestaurantListviewItemState();
}

class _RestaurantListviewItemState extends State<RestaurantListviewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 359.69,
      height: 96.95,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.39),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Image.asset(widget.img,height: 96.95,width: 96.95,)),
          Container(
             padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.headline,style: TextStyle(color:Color(0xff010E16),fontSize: 13.57,fontWeight: FontWeight.w500),),
                SizedBox(height:5),
                Row(
                  children: [   
                    Image.asset("assets/star.png",height: 17,width: 17,),
                    SizedBox(width:3),
                    Text(widget.point,style: TextStyle(color: Color(0xffB3B3B3),fontSize: 12),)
                  ],
                ),
                SizedBox(height:15),
                Row(
                  children: [
                    Image.asset("assets/time.png"),
                     SizedBox(width:5),
                    Text(widget.minute,style: TextStyle(color: Color(0xffB3B3B3),fontSize: 12),),
                    SizedBox(width:20),
                    Image.asset("assets/dot.png"),
                    SizedBox(width:5),
                    Text(widget.kilometer,style: TextStyle(color: Color(0xffB3B3B3),fontSize: 12),),
    
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 59.2,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
              width: 54.29,
              height: 30.06,
              decoration: BoxDecoration(
                color: Color(0xff010E16),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14.5),
                  topRight: Radius.circular(14.5),)
              ),
              child:Container(alignment: Alignment.center,child: Text("New",style: TextStyle(fontSize: 13.57,color:Colors.white,fontWeight: FontWeight.w600),))
            ),
            ],

          )
        ],
      ),
    );
  }
}