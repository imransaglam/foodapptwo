import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantIcons extends StatefulWidget {
  const RestaurantIcons({super.key});

  @override
  State<RestaurantIcons> createState() => _RestaurantIconsState();
}

class _RestaurantIconsState extends State<RestaurantIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          color: Color(0xff6C6C6C),
          shape: BoxShape.circle,
        ),
        child: Image.asset("assets/left_arrow.png"),

      
    );
  }
}