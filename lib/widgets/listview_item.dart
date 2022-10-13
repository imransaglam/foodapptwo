import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyListViewItem extends StatefulWidget {
  final String imgUrl;
  final String text;
  const MyListViewItem({super.key, required this.imgUrl, required this.text});

  @override
  State<MyListViewItem> createState() => _MyListViewItemState();
}

class _MyListViewItemState extends State<MyListViewItem> {

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
              Image.asset(widget.imgUrl,width:80 ),
              Text(widget.text,style: TextStyle(fontSize: 11.63),)
            ],
            );
  }
}