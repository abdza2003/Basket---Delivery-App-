import 'package:advanceproje/core/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTextFaildWidget extends StatelessWidget {
  String title;
  TextInputType? textInputType;
  MyTextFaildWidget({required this.title, this.textInputType, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: FontManager.smallBoldStyle,
      keyboardType: textInputType ?? TextInputType.name,
      decoration: InputDecoration(
        hintText: '$title',
      ),
    );
  }
}
