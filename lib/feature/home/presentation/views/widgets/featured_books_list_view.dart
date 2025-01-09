import 'package:flutter/material.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_image.dart';


class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
         itemBuilder: (BuildContext context, int index) { 
          return const CustomBookImage();
         },),
    );
  }
}



