import 'package:bookly_app/featuers/home_feature/presentation/veiws_model/cubits/newest_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'best_seller_listveiw_item.dart';

class BestsellerListveiw extends StatelessWidget {
  const BestsellerListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListveiwitem(book: state.books[index],),
                );
              }

          );
        }else if(state is NewestBooksFailure){
          return Center(child: Text(state.errormasg));
        }else{
return Center(
  child: SizedBox(
    width: 200.0,
    height: 100.0,
    child: Shimmer.fromColors(
      baseColor: Colors.blue,
      highlightColor: Colors.yellow,
      child: Text(
        'Loading...',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight:
          FontWeight.bold,
        ),
      ),
    ),
  ),
);        }
      },
    );
  }
}
