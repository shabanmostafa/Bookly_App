import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7/4,
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
          ),
        ],
      ),
    );
  }
}





