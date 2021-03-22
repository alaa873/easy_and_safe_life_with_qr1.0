import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_and_safe_life_with_qr/helpers/size_config.dart';
import 'package:easy_and_safe_life_with_qr/home/view/home_screen.dart';
import 'package:easy_and_safe_life_with_qr/onboarding_screen.dart';
import 'package:easy_and_safe_life_with_qr/sign_up/view/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login-screen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),

               const SizedBox(height: 30.0),
                   Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

               const SizedBox(height: 8.0),
              //  Container(
              //   height: 6,
              //   width: SizeConfig.blockSizeHorizontal * 40,
              //   color: Colors.black,
              // ),
               const SizedBox(height: 40.0),
              Container(
                width: double.infinity,
              ),
              _EmailInput(),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              _PasswordInput(),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 6,
              ),
              _LoginButton(),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2,
              ),
              _GoogleLoginButton(),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ?"),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal * 5,
                  ),
                  _SignUpButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF3F4F6),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: TextFormField(
          key: const Key('loginForm_emailInput_textField'),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Color(0xFF475BD8),
              ),
              border: InputBorder.none,
              focusColor: Color(0xFF475BD8),
              labelText: 'E-Mail',
              labelStyle: TextStyle(
                color: Color(0xFF475BD8),
              )),
        ),
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF3F4F6),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: TextFormField(
          key: const Key('loginForm_passwordInput_textField'),
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock_outlined,
              color: Color(0xFF475BD8),
            ),
            border: InputBorder.none,
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Color(0xFF475BD8),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //TODO:validate and login
      onTap: () {
        Get.offAllNamed(OnBoardingScreen.routeName);
      },
      key: const Key('loginForm_continue_raisedButton'),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color:Colors.indigo,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('loginForm_googleLogin_raisedButton'),
      //TODO:Sign in with google
      onTap: () {},
      child: Card(
        color: Colors.indigo,
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In with google",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: SizeConfig.blockSizeHorizontal * 10,
              ),
              Image.asset(
                "assets/images/google.png",
                height: SizeConfig.blockSizeHorizontal * 7,
                width: SizeConfig.blockSizeHorizontal * 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      key: const Key('loginForm_createAccount_flatButton'),
      child: Text(
        "Sign Up",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () => Get.toNamed(
        SignUpScreen.routeName,
      ),
    );
  }
}
