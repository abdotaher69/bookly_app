import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';
import '../../../../../core/utilities/styles.dart';
import '../../../data/models/book_model/Book_model.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_details_appbar.dart';
import 'custom_listveiw_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;

    return Column(
      children: [
        CustomBookDetailsAppbar(),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal:width*.17 ),
          child: CustomListveiwItem(image: bookModel.volumeInfo!.imageLinks?.thumbnail.toString()??''),
        ),
        const SizedBox(height: 43,),
        Text(
          textAlign: TextAlign.center,
            bookModel.volumeInfo!.title.toString(),style: Styles.textStyle30.copyWith(fontFamily:kGtSectraFine,)),
        const SizedBox(height: 6,),
        Text(bookModel.volumeInfo!.authors?[0]??'',style: Styles.textStyle18.copyWith(
          fontStyle: FontStyle.italic,
          color: Colors.grey.withOpacity(0.7),
          fontWeight: FontWeight.w500,
        )),
        SizedBox(height: 10,),
        BookRating(mainAxisAlignment: MainAxisAlignment.center,rating: 4.8,count: bookModel.volumeInfo!.pageCount??0,),
        SizedBox(height: 37,),
        BookAction(bookModel: bookModel,),
      ],
    );
  }
}