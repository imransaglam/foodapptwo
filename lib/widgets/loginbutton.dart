import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      alignment: Alignment.center,
      width:359.69,
      height: 63.99,
      decoration: BoxDecoration(
        border: Border.all(color:Color(0xff314B61), ),
        borderRadius: BorderRadius.circular(8.73), 
      ),
     
      child: Text("Login",style: TextStyle(color:Color(0xffF5F5F5),fontSize: 29.09,fontWeight: FontWeight.w400),),
    );
  }
}