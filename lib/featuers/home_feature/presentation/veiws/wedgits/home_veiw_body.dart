import 'package:bookly_app/core/utilities/AssetsData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants/constants.dart';
import '../../../../../core/utilities/styles.dart';
import 'best_seller_listveiw.dart';
import 'best_seller_listveiw_item.dart';
import 'custom_app_bar.dart';
import 'custom_list_veiw.dart';
import 'custom_listveiw_item.dart';

class HomeVeiwBody extends StatelessWidget {
  const HomeVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomAppBar(),
            ),
            CustomListveiw(),
            SizedBox(height: 50,),
            Text('Newest Books',style: Styles.textStyle18.copyWith(fontFamily:kGtSectraFine, ),),

          ],
        ),
      ),
      SliverFillRemaining(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BestsellerListveiw(),
        ),

      )

    ],);
  }
}
