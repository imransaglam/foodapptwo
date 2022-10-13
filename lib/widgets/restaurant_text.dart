import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantText extends StatefulWidget {
  const RestaurantText({super.key});

  @override
  State<RestaurantText> createState() => _RestaurantTextState();
}

class _RestaurantTextState extends State<RestaurantText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
           Text("Categories",style: TextStyle(color:Color(0xff010E16),fontSize: 17.45,fontWeight: FontWeight.w500),),
          SizedBox(width: 230,),
          Text("Show all",style: TextStyle(color:Color(0xff459FCA),fontSize: 11.63,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}