import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyappBarItem extends StatefulWidget {
  const MyappBarItem({super.key});

  @override
  State<MyappBarItem> createState() => _MyappBarItemState();
}

class _MyappBarItemState extends State<MyappBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 271,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi Noha!",
                  style: TextStyle(
                      color: Color(0xff010E16),
                      fontSize: 19.39,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.start,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xff035176),
                      size: 14.54,
                    ),
                    Text(
                      "Location, Main City-Napgur",
                      style: TextStyle(
                          color: Color(0xffB3B3B3),
                          fontSize: 11.63,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Color(0xff035176),
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 63),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Container(
              child: Stack(
                children: [
                  ImageIcon(
                    size: 28,
                    AssetImage("assets/ring.png"),
                    color: Color(0xff035176),
                  ),
                  Positioned(
                    left: 15,
                    child: ImageIcon(
                      size: 13,
                      AssetImage("assets/circle.png"),
                      color: Color(0xffDC0000),
                    ),
                  ),
                  Positioned(
                    left: 17,
                    top: 2,
                    child: ImageIcon(
                        size: 9,
                        AssetImage("assets/five.png"),
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
