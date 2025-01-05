import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Text('19.99 ',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
       const Spacer(),
        Row(
         children: [
           const Icon(FontAwesomeIcons.solidStar,color: Color(0xFFffdd4f),),
           const SizedBox(width: 6.3,),
           const Text('4.8',style: Styles.textStyle16,),
           const SizedBox(width: 5,),
           Text('(2360)',style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),),
         ],
       ),
     ],
    );
  }
}
