import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textColor, required this.backgroundColor, this.borderRadius});
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius?? BorderRadius.circular(12)
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: (){}, child:  Text(text,style: Styles.textStyle18.copyWith(color: textColor,fontWeight: FontWeight.bold),),),
    );
  }
}