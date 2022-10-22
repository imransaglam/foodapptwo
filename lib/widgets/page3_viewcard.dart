import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageCard extends StatefulWidget {
  const PageCard({super.key});

  @override
  State<PageCard> createState() => _PageCardState();
}

class _PageCardState extends State<PageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 369,
      height: 68.84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.39),
        color: Color(0xff010E16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("View Cart",style: TextStyle(color: Colors.white,fontSize: 19.39),),
            Text("\$7",style: TextStyle(color: Colors.white,fontSize: 19.39),)

          ],
        ),
      ),
    );
  }
}