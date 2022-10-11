import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class createAccountText extends StatefulWidget {
  const createAccountText({super.key});

  @override
  State<createAccountText> createState() => _createAccountTextState();
}

class _createAccountTextState extends State<createAccountText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Create account",style: TextStyle(color:Color(0xffD9D9D9),fontSize: 14.54,fontWeight: FontWeight.w300),),
    );
  }
}