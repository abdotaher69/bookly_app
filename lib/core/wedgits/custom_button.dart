import 'package:bookly_app/core/utilities/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onpressed ,required this.text, required this.backgroundColor, required this.textColor, this.borderRadius});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius??BorderRadius.circular(12),
          ),
        ),
        child: Text(text,style: Styles.textStyle18.copyWith(color: textColor,fontWeight: FontWeight.bold),),
        onPressed:onpressed ,
      ),
    );
  }
}
