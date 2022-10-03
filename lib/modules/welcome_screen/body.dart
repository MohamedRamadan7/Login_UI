import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/modules/login/login_screen.dart';
import 'package:login/modules/signup/signup_screen.dart';
import 'package:login/modules/welcome_screen/background.dart';
import 'package:login/shared/components/components.dart';
import 'package:login/shared/styles/colors.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //this size provide us total width and height of our screen
    Size size =MediaQuery.of(context).size;
    return  Background(
      child: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         const Text('Welcome Sir',
          style: TextStyle(
            fontWeight: FontWeight.bold),),
          SizedBox(
            height: size.height*0.03,
          ),
          Image.asset('assets/icons/chat.png',height: size.height*0.45,),
          SizedBox(
            height: size.height*0.05,
          ),
          Container(
            margin:const EdgeInsets.symmetric(vertical: 20),
            child: defaultButton(function: ()
            {
              navigateTo(context,const LoginScreen());
            },
              radius: 29,
              width: size.width*.8,
                text: 'Login',
                background: kPrimaryColor,
                isUberCase: false,
            ),
          ),
          Container(
            margin:const EdgeInsets.symmetric(vertical: 20),
            child: defaultButton(function: (){
              navigateTo(context,const SignUpScreen());

            },
              radius: 29,
              width: size.width*.8,
              text: 'Signup',
              background: kPrimaryLightColor,
              textColor: Colors.white,
              isUberCase: false,
            ),
          ),


        ],
    ),
      ),);
  }
}


