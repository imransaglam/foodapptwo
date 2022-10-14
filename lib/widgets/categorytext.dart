import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryText extends StatefulWidget {
  const CategoryText({super.key});

  @override
  State<CategoryText> createState() => _CategoryTextState();
}

class _CategoryTextState extends State<CategoryText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text("Categories",style: TextStyle(color:Color(0xff010E16),fontSize: 17.45,fontWeight: FontWeight.w500),),
          SizedBox(width: 230,),
          Text("Show all",style: TextStyle(color:Color(0xff459FCA),fontSize: 11.63,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}