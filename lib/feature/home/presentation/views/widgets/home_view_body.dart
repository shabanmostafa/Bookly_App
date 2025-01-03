import 'package:bookly_app/feature/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'custom_viewlist_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomViewListItem()
      ],
    );
  }
}



