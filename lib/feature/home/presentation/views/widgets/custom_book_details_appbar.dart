import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.x),),
              IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.cartShopping),),
      
      ],),
    );
  }
}