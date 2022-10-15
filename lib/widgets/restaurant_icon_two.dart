import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantIconTwo extends StatefulWidget {
  const RestaurantIconTwo({super.key});

  @override
  State<RestaurantIconTwo> createState() => _RestaurantIconTwoState();
}

class _RestaurantIconTwoState extends State<RestaurantIconTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          color: Color(0xff6C6C6C),
          shape: BoxShape.circle,
        ),
        child: Image.asset("assets/heart.png"),
    );
  }
}