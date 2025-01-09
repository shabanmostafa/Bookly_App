import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/books_action_buttons.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    //to can do Expanded an scroll
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.23),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 46,),
          const Text(
            'The Jungle Book',
            style:Styles.textStyle30,
          ),
          const SizedBox(height: 3,),
           Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style:Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,),
                       ),
           ),
           const SizedBox(height: 16,),
           const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
           const SizedBox(height: 36,),
           const BooksActionButtons(),
           const Expanded(child: SizedBox(height: 50,)),
                 Align(
              alignment: Alignment.centerLeft,
              child: Text('You Can Also Like',style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold
             ),
             ),
           ),
          const SizedBox(height: 16,),
          const SimilarBooksListView(),
          const SizedBox(height: 40,),
        ],
      ),
     ),
    ),
  ],
);
    
  }
}
