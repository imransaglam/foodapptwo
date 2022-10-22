import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapptwo/widgets/restaurant_background_image.dart';
import 'package:foodapptwo/widgets/restaurant_container.dart';
import 'package:foodapptwo/widgets/restaurant_container_card.dart';
import 'package:foodapptwo/widgets/restaurant_container_icons_two.dart';
import 'package:foodapptwo/widgets/restaurant_container_listview.dart';
import 'package:foodapptwo/widgets/restaurant_container_text.dart';
import 'package:foodapptwo/widgets/restaurant_icon.dart';
import 'package:foodapptwo/widgets/restaurant_icon_two.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  List <String>foodtypes=[
    "Burger",
    "Fries",
    "Coach",
    "Meals",
    "Burger"
  ];
  List<String>foodimages=[
    "assets/Rectangle23.png",
    "assets/Rectangle29.png",
    "assets/Rectangle33.png",
    "assets/Rectangle37.png",
  ];
   List <String>foodtexts=[
    "Chicken Burger",
    "Potato Corn Burger",
    "Supreme Veggie Burger",
    "Pizza Burger",
  ];
  List <String>foodprices=[
    "7",
    "8",
    "6",
    "10",
  ];
    List <String>foodranks=[
    "4.5",
    "4",
    "4.3",
    "4.5",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Stack(
          children: [
            
            RestaurantBackgroundImage(),
            Positioned(left: 10,top:75,child: RestaurantIcons()),
            Positioned(right: 10,top:75,child: RestaurantIconTwo()),
            Padding(
              padding: const EdgeInsets.only(top:273),
              child: RestaurantContainer(),
            ),
            Positioned(left:30,top:295,child: RestaurantContainerText()),
            Positioned(left:30,top:330,child: RestaurantIconsContainer()),
            Positioned(
              left:30,top:380,
              child: Container(
               width:383,
             height: 37,
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount:foodtypes.length ,
                  itemBuilder: ((context, index) {
                    return CategoryListview(foodtype: foodtypes[index]);
                  })),
              ),
            ),
            Positioned(
               top:420,
              child: Container(
      
                width: 400,
                    height: MediaQuery.of(context).size.height,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(19.39),
                        //color: Colors.pink
                        ),
                        child: ListView.builder(physics: NeverScrollableScrollPhysics(),scrollDirection: Axis.vertical,itemCount: foodimages.length,itemBuilder: ((context, index) {
                          return RestaurantCard(foodimg: foodimages[index], foodtext: foodtexts[index], foodrank: foodranks[index], foodprice: foodprices[index]);
                          
                        })),
              ),
            )
      
           
      
          ],
        ),
      )
    );
  }
}