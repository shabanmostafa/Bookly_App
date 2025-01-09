import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: buildOutlinedInputBoarder(),
          focusedBorder: buildOutlinedInputBoarder(),
          hintText: 'Search',
          suffixIcon: IconButton(
            color: Colors.white,
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
            onPressed: () {},
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlinedInputBoarder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
