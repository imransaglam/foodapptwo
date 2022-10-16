import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryListview extends StatefulWidget {
 final String foodtype;
  const CategoryListview({super.key, required this.foodtype});

  @override
  State<CategoryListview> createState() => _CategoryListviewState();
}

class _CategoryListviewState extends State<CategoryListview> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
        margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                   border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(2.91),
        
                  ), 
      child: Text(widget.foodtype,style: TextStyle(color:Color(0xff010E16),fontSize: 13.57,fontWeight: FontWeight.w400),),
    );
  }
}