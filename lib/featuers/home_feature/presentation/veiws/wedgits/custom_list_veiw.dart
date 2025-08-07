import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utilities/app_routers.dart';
import '../../veiws_model/cubits/featuerd_book_cubit.dart';
import 'custom_listveiw_item.dart';

class CustomListveiw extends StatelessWidget {
  const CustomListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerdBookCubit, FeatuerdBookState>(
      builder: (context, state) {
        if (state is FeatuerdBookSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.2,

            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child:  InkWell(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kbookdetails,extra: state.books[index]);

                    },
                      child: CustomListveiwItem(image:state.books[index].volumeInfo!.imageLinks?.thumbnail.toString()??'' )),
                );
              },
            ),
          );
        }else if(state is FeatuerdBookFailure){
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
                  'Loading....',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
