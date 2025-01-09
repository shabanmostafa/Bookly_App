import 'package:bookly_app/core/utils/colors.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActionButtons extends StatelessWidget {
  const BooksActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(child: CustomButton(
            textColor: Colors.black,
            text: '19.99',
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),),
          Expanded(child: CustomButton(
            textColor: Colors.white,
            text: 'Free Preview',
            backgroundColor:AppColors.kActionButtonColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
      
          ),)
        ],
      ),
    );
  }
}