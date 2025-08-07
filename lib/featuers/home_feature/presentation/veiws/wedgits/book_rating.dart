import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilities/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment=MainAxisAlignment.start,required this.rating,required this.count});
  final MainAxisAlignment mainAxisAlignment;
final double rating;
final int count;
  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
        const Icon(FontAwesomeIcons.solidStar,color:Color(0xffffdd4f),),
        const SizedBox(width: 15,),
        Text("$rating",style: Styles.textStyle16,),
        const  SizedBox(width: 15,),
        Text("$count",style: Styles.textStyle14.copyWith(color: Colors.grey),),
      ],
      );
  }
}