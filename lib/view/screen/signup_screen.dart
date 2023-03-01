import 'package:advanceproje/core/constants/color_manager.dart';
import 'package:advanceproje/core/constants/font_manager.dart';
import 'package:advanceproje/core/constants/image_manager.dart';
import 'package:advanceproje/view/screen/background.dart';
import 'package:advanceproje/view/screen/login_screen.dart';
import 'package:advanceproje/view/widget/bottomText_widget.dart';
import 'package:advanceproje/view/widget/mybutton_widget.dart';
import 'package:advanceproje/view/widget/mytextfaild_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Background(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
                    Text(
                      'Please type your information',
                      style: FontManager.regularStyle,
                    ),
                    const SizedBox(height: 20),
                    MyTextFaildWidget(title: 'Full Name'),
                    const SizedBox(height: 20),
                    MyTextFaildWidget(
                        title: 'Email Address',
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(height: 20),
                    MyTextFaildWidget(
                      title: 'Password',
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            width: 100,
                            alignment: Alignment.center,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorManager.textFaild,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(ImageManager.iconSignup),
                                Text(
                                  '+1',
                                  style: FontManager.smallBoldStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            flex: 3,
                            child: MyTextFaildWidget(
                              title: '000-00-0000',
                              textInputType: TextInputType.number,
                            )),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                            value: checkBoxValue,
                            activeColor: ColorManager.primary,
                            onChanged: (newValue) {
                              setState(() {
                                checkBoxValue = newValue as bool;
                              });
                            }),
                        Text(
                          'By  joining I agree to receive emails from Geeta.',
                          style: FontManager.latoRegular,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    MyButtonWiget(func: () {}, buttonTitle: 'Create Account'),
                    const SizedBox(height: 30),
                    BottoTextWidget(
                      title1: 'Already have an account? ',
                      title2: 'Sign In',
                      func: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            duration: const Duration(milliseconds: 400),
                            type: PageTransitionType.bottomToTop,
                            child: const LoginScreen(),
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
