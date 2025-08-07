import 'package:bookly_app/core/utilities/app_routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilities/AssetsData.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Image.asset(AssetsData.logo)),
          Expanded(child: Align(
              alignment:Alignment.centerRight,
              child: IconButton(onPressed:(){
                GoRouter.of(context).push(AppRouter.ksearchveiw);
              } , icon: Icon(Icons.search,size: 30,))))
        ],),
    );
  }
}