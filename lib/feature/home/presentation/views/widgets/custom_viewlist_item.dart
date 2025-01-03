import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5/4,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10),),
           image:DecorationImage(image: AssetImage(AssetsApp.testImage),fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}