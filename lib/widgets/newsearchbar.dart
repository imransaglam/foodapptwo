import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewSearchBar extends StatefulWidget {
  const NewSearchBar({super.key});

  @override
  State<NewSearchBar> createState() => _NewSearchBarState();
}

class _NewSearchBarState extends State<NewSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top:10),
             padding: EdgeInsets.only(top:5,left:10),
            width: 295,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.82),
              color:Colors.white,
              boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: const Offset(
                        0,
                          3.0,
                      ),
                      blurRadius: 3.0,
                      spreadRadius: 3.0,
                    ), //BoxShadow
                    //BoxShadow
                  ],
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search_outlined,
                  color: Color(0xff333333),
                  size: 15,
                ),
                SizedBox(width: 5,),
                Text(
                  "Search Your food or Restaurant",
                  style: TextStyle(
                      color: Color(0xffCFCFCF),
                      fontSize: 11.63,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          SizedBox(width:13),
          Container(
            alignment: Alignment.center,
            child: Image.asset("assets/Filter.png"),
            width: 54.29,
            height: 35,
             margin: EdgeInsets.only(top:10),
            // padding: EdgeInsets.only(top:5,left:10),
            decoration: BoxDecoration(
              color:Colors.white,
               borderRadius: BorderRadius.circular(5.82),
                boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: const Offset(
                        0,
                          3.0,
                      ),
                      blurRadius: 3.0,
                      spreadRadius: 3.0,
                    ), //BoxShadow
                    //BoxShadow
                  ],
            ),
          )
        ],
      ),
    );
  }
}