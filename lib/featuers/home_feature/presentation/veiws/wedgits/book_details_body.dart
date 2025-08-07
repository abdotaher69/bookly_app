import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/featuers/home_feature/presentation/veiws/wedgits/book_action.dart';
import 'package:bookly_app/featuers/home_feature/presentation/veiws/wedgits/book_rating.dart';
import 'package:bookly_app/featuers/home_feature/presentation/veiws/wedgits/similar_book_section.dart';
import 'package:bookly_app/featuers/home_feature/presentation/veiws/wedgits/similar_books_listveiw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';
import '../../../data/models/book_model/Book_model.dart';
import 'book_details_section.dart';
import 'custom_book_details_appbar.dart';
import 'custom_listveiw_item.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BookDetailsSection(bookModel: bookModel,),
                  Expanded(child: SizedBox(height: 40,)),
                  SimillarBooksSection(),

                ],
              ),
            )

      )],

    );
  }
}





