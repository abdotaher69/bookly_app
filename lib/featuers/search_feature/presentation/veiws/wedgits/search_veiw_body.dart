import 'package:bookly_app/core/utilities/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../home_feature/presentation/veiws/wedgits/best_seller_listveiw_item.dart';
import '../../../../splash/presentation/veiws/wedgits/custom_text_feild.dart';
import '../../../../splash/presentation/veiws/wedgits/search_result_listVeiw.dart';
import '../../../model_veiw/search_cubit.dart';

class SearchVeiwBody extends StatelessWidget {
   SearchVeiwBody({super.key});
  final TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [

          CustomTextfeild(
            controller: TextEditingController(),
            onSubmitted: (value){
            BlocProvider.of<SearchCubit>(context).getSearchedBooks(value);
            controller.clear();

          },),
          SizedBox(height: 16,),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Search Result",style:Styles.textStyle18)),
          SizedBox(height: 16,),
          Expanded(child: SearchResultListveiw())

        ],
      ),
    );
  }
}


