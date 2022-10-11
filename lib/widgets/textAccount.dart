import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class textAccount extends StatefulWidget {
  const textAccount({super.key});

  @override
  State<textAccount> createState() => _textAccountState();
}

class _textAccountState extends State<textAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(height: 40,),
          Text("Don't have an account?",style:TextStyle(color:Color(0xff375268),fontSize: 14.54,fontWeight: FontWeight.w300),),
        ],
      ),
    );
  }
}