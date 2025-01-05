import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: [SliverToBoxAdapter(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(height: 50,),
            Text('Best Seller', style: Styles.textStyle18,
            ),
            SizedBox(height: 20,),
          ],
        )      ,
        ),
          SliverFillRemaining(child: BestSellerListView())
],
        
      ),
    );
  }
}

