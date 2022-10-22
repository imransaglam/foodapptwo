import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantIconsContainer extends StatefulWidget {
  const RestaurantIconsContainer({super.key});

  @override
  State<RestaurantIconsContainer> createState() => _RestaurantIconsContainerState();
}

class _RestaurantIconsContainerState extends State<RestaurantIconsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Row(
        children: [
          Image.asset("assets/star.png" ,width: 23,height: 23,),
          SizedBox(width:5),
          Text("4.5",style: TextStyle(color: Color(0xffB3B3B3),fontSize: 18,fontWeight: FontWeight.w500),),
          SizedBox(width: 25,),
          Image.asset("assets/time.png",width: 23,height: 23),
          SizedBox(width:5),
          Text("25-35 mins",style: TextStyle(color: Color(0xffB3B3B3),fontSize: 18,fontWeight: FontWeight.w500),),
          SizedBox(width: 25,),
           Image.asset("assets/dot.png",width: 15,height: 15),
           SizedBox(width:5),
          Text("8 km",style: TextStyle(color: Color(0xffB3B3B3),fontSize: 18,fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}