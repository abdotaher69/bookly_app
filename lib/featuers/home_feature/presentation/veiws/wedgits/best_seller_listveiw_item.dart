import 'package:bookly_app/featuers/home_feature/data/models/book_model/Book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants/constants.dart';
import '../../../../../core/utilities/AssetsData.dart';
import '../../../../../core/utilities/app_routers.dart';
import '../../../../../core/utilities/styles.dart';
import 'book_rating.dart';
import 'custom_listveiw_item.dart';

class BestSellerListveiwitem extends StatelessWidget {
  const BestSellerListveiwitem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kbookdetails,extra: book);
      },
      child: SizedBox(
        height: 140,
        child: Row(children: [
          CustomListveiwItem(image: book.volumeInfo!.imageLinks?.thumbnail.toString()??''),
          const SizedBox(width: 30,),
          Expanded(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: Text(book.volumeInfo!.title.toString(),style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                const SizedBox(height: 3,),
                Text(
                  (book.volumeInfo!.authors != null && book.volumeInfo!.authors!.isNotEmpty)
                      ? book.volumeInfo!.authors!.first
                      : 'Unknown Author',
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 3,),
                Row(children: [
                  Text("Free",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                  const Spacer(),
                  BookRating(rating:4.8 ,count: book.volumeInfo!.pageCount??0,),
                ],)
              ],),
          )

        ],),
      ),
    );
  }
}





