import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
