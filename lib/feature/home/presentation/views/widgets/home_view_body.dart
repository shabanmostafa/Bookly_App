import 'package:bookly_app/feature/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView()
      ],
    );
  }
}





