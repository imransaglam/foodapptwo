import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewRestaurantListviewItem extends StatefulWidget {
  final String img1;
  final String headline1;
  final String point1;
  final String minute1;
  final String kilometer1;
  const NewRestaurantListviewItem({super.key, required this.img1, required this.headline1, required this.point1, required this.minute1, required this.kilometer1});

  @override
  State<NewRestaurantListviewItem> createState() => _NewRestaurantListviewItemState();
}

class _NewRestaurantListviewItemState extends State<NewRestaurantListviewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(  
      width: 359.69,
      height: 96.95,
      margin: EdgeInsets.only(bottom: 10),
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
            child: Image.asset(widget.img1,height: 96.95,width: 96.95,)),
          Container(
             padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.headline1,style: TextStyle(color:Color(0xff010E16),fontSize: 13.57,fontWeight: FontWeight.w500),),
                SizedBox(height:5),
                Row(
                  children: [   
                    Image.asset("assets/star.png",height: 17,width: 17,),
                    SizedBox(width:3),
                    Text(widget.point1,style: TextStyle(color: Color(0xffB3B3B3),fontSize: 12),)
                  ],
                ),
                SizedBox(height:15),
                Row(
                  children: [
                    Image.asset("assets/time.png"),
                     SizedBox(width:5),
                    Text(widget.minute1,style: TextStyle(color: Color(0xffB3B3B3),fontSize: 12),),
                    SizedBox(width:20),
                    Image.asset("assets/dot.png"),
                    SizedBox(width:5),
                    Text(widget.kilometer1,style: TextStyle(color: Color(0xffB3B3B3),fontSize: 12),),
    
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