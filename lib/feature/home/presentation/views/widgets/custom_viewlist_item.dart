import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomViewListItem extends StatelessWidget {
  const CustomViewListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.23,
      child: AspectRatio(
        aspectRatio: 2.8/4,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10),),
           image:DecorationImage(image: AssetImage(AssetsApp.testImage),fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}