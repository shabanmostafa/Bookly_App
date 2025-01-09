import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            image: DecorationImage(
                image: AssetImage(AssetsApp.testImage), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
