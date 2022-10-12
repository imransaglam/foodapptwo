import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapptwo/widgets/backgroundimage.dart';
import 'package:foodapptwo/widgets/createAccountText.dart';
import 'package:foodapptwo/widgets/loginbutton.dart';
import 'package:foodapptwo/widgets/logintext.dart';
import 'package:foodapptwo/widgets/textAccount.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff010E16),
      body: Column(
        children: [
          BackgroundImage(),
          LoginText(),
          LoginButton(),
          textAccount(),
          createAccountText(),
        ],
      ),
    );
  }
}