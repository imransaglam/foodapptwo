import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantContainerText extends StatefulWidget {
  const RestaurantContainerText({super.key});

  @override
  State<RestaurantContainerText> createState() => _RestaurantContainerTextState();
}

class _RestaurantContainerTextState extends State<RestaurantContainerText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Burger King",style: TextStyle(color:Color(0xff010E16),fontSize: 23,fontWeight: FontWeight.w600),),
    );
  }
}