import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utilities/styles.dart';
import '../../../../home_feature/data/models/book_model/Book_model.dart';
import '../../../../home_feature/presentation/veiws/wedgits/best_seller_listveiw_item.dart';
import '../../../../search_feature/model_veiw/search_cubit.dart';

class SearchResultListveiw extends StatelessWidget {
  const SearchResultListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if(state is SearchSuccess){
          print('----------------------------------------------------------------');
          print(state.books.length);
          print('----------------------------------------------------------------');
          print(state.books);
          return ListView.builder(
            itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListveiwitem(book: state.books[index],),
                );
              }

          );
        }else if(state is SearchFailure){
          return Center(child: Text(state.errormasg));
        }else if(state is SearchLoading){
          return const Center(child: CircularProgressIndicator());
        }else{
          return Center(child: Text("Start Searching Now!",style: Styles.textStyle30));
        }
      },
    );
  }
}