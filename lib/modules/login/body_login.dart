import 'package:flutter/material.dart';
import 'package:login/modules/login/background_login.dart';
import 'package:login/modules/signup/signup_screen.dart';
import 'package:login/shared/components/components.dart';
import 'package:login/shared/styles/colors.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
            const Text('Login',
              style: TextStyle(
                  fontWeight: FontWeight.bold),),
            SizedBox(
              height: size.height*0.03,
            ),
            Image.asset('assets/icons/login.png',height: size.height*0.35,),
              Container(
                width: size.width*0.8,
                margin:const EdgeInsets.symmetric(vertical: 10),
                child: defaultFormFiled(
                  controller: emailController,
                  lable: 'Email',
                  type: TextInputType.name,
                  fixIcon: Icons.person,
                  radius: 29,
                ),
              ),
              Container(
                margin:const EdgeInsets.symmetric(vertical: 10),
                width: size.width*0.8,
                child: defaultFormFiled(
                  controller: passwordController,
                  lable: 'password',
                  ispassword: true,
                  type: TextInputType.visiblePassword,
                  fixIcon: Icons.lock,
                  suffix: Icons.visibility,
                  radius: 29,
                ),
              ),
              Container(
                margin:const EdgeInsets.symmetric(vertical: 10),
                child: defaultButton(function: ()
                {
                },
                  radius: 29,
                  width: size.width*.8,
                  text: 'Login',
                  background: kPrimaryColor,
                  isUberCase: false,
                ),
              ),
              SizedBox(
                height: size.height*0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Don’t have Account?',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400),),
                  TextButton(onPressed: ()
                  {
                    navigateTo(context,const SignUpScreen());

                  }, child: const Text('SignUp',
                    style: TextStyle(
                      color: kPrimaryColor,
                        fontWeight: FontWeight.bold),),)
                ],
              ),

            ],),
        ));
  }
}
