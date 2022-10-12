import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginText extends StatefulWidget {
  const LoginText({super.key});

  @override
  State<LoginText> createState() => _LoginTextState();
}

class _LoginTextState extends State<LoginText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:326.73,
      height: 200.69,
      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",style: TextStyle(color:Colors.white,fontSize: 38.78,fontWeight: FontWeight.w600,),),
    );
  }
}