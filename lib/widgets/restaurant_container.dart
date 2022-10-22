import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RestaurantContainer extends StatefulWidget {
  const RestaurantContainer({super.key});

  @override
  State<RestaurantContainer> createState() => _RestaurantContainerState();
}

class _RestaurantContainerState extends State<RestaurantContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 550,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.21),
          topRight: Radius.circular(25.21),
        )
      ),
      
    );
  }
}