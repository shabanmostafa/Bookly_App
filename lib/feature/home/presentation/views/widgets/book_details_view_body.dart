import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
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
        ],
        
      ),
    );
  }
}
