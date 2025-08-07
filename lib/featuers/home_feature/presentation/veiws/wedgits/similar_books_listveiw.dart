import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../veiws_model/cubits/similar_books_cubit.dart';
import 'custom_listveiw_item.dart';

class SimilarBooksListveiw extends StatelessWidget {
  const SimilarBooksListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
  builder: (context, state) {
   if(state is SimilarBooksSuccess){
     return SizedBox(
       height: MediaQuery.of(context).size.height*0.15,

       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: state.books.length,
         itemBuilder: (context, index) {
           return Padding(
             padding: const EdgeInsets.symmetric(horizontal:6),
             child:   CustomListveiwItem(image:state.books[index].volumeInfo!.imageLinks?.thumbnail.toString()??''),
           );
         },
       ),
     );
   }else if(state is SimilarBooksFailure){
     return  Text(state.errormasg);
   }else{
     return const CircularProgressIndicator();
   }
  },
);;
  }
}

