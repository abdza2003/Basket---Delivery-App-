import 'package:advanceproje/core/constants/font_manager.dart';
import 'package:advanceproje/core/constants/image_manager.dart';
import 'package:advanceproje/view/screen/background.dart';
import 'package:advanceproje/view/screen/signup_screen.dart';
import 'package:advanceproje/view/widget/bottomText_widget.dart';
import 'package:advanceproje/view/widget/mybutton_widget.dart';
import 'package:advanceproje/view/widget/mytextfaild_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Background(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Basket',
                        style: FontManager.extraBoldStyle,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SvgPicture.asset(
                      ImageManager.iconAuth,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Log In',
                      style: FontManager.boldStyle,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Please type your information',
                      style: FontManager.regularStyle,
                    ),
                    const SizedBox(height: 20),
                    MyTextFaildWidget(
                        title: 'Email Address',
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(height: 20),
                    MyTextFaildWidget(title: 'Password'),
                    const SizedBox(height: 20),
                    MyButtonWiget(func: () {}, buttonTitle: 'Log In'),
                    const SizedBox(height: 20),
                    BottoTextWidget(
                      title1: 'New user?! ',
                      title2: 'Create an Account',
                      func: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            duration: const Duration(milliseconds: 400),
                            type: PageTransitionType.bottomToTop,
                            child: SignUpScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
