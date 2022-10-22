import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantBackgroundImage extends StatefulWidget {
  const RestaurantBackgroundImage({super.key});

  @override
  State<RestaurantBackgroundImage> createState() => _RestaurantBackgroundImageState();
}

class _RestaurantBackgroundImageState extends State<RestaurantBackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 288.92,
        child: Image.asset("assets/backgroundimage_restaurant.png",fit: BoxFit.cover,)
    
      ),
    );
  }
}