
import 'package:flutter/material.dart';
import 'package:login/modules/login/login_screen.dart';
import 'package:login/modules/signup/background_signup.dart';
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
            const Text('SignUp',
              style: TextStyle(
                  fontWeight: FontWeight.bold),),
            SizedBox(
              height: size.height*0.02,
            ),
            Image.asset('assets/icons/signup.png',height: size.height*0.30,),
              Container(
                width: size.width*0.8,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: defaultFormFiled(
                  controller: emailController,
                  lable: 'Email',
                  type: TextInputType.name,
                  fixIcon: Icons.person,
                  radius: 29,
                ),
              ),
              Container(
                margin:const EdgeInsets.symmetric(vertical: 8),
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
                margin:const EdgeInsets.symmetric(vertical: 8),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Already have Account?',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400),),
                  TextButton(onPressed: ()
                   {
                      navigateTo(context,const LoginScreen());
                    }, child: const Text('Sign In',
                    style: TextStyle(
                      color: kPrimaryColor,
                        fontWeight: FontWeight.bold),),)
                ],
              ),
             const OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: CircleAvatar(
                        backgroundColor: kPrimaryLightColor,
                        radius: 20,
                        child: Image.asset('assets/icons/facebook.png',
                          width: 20,height: 20,color: kPrimaryColor,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: CircleAvatar(
                        backgroundColor: kPrimaryLightColor,
                        radius: 20,
                        child: Image.asset('assets/icons/google-plus.png',
                          width: 20,height: 20,color: kPrimaryColor,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: InkWell(
                        child: CircleAvatar(
                          backgroundColor: kPrimaryLightColor,
                          radius: 20,
                          child: Image.asset('assets/icons/twitter.png',
                            width: 20,height: 20,color: kPrimaryColor,),
                        ),
                      ),
                    ),
                  ),

                ],
              )

            ],),
        ));
  }
}

