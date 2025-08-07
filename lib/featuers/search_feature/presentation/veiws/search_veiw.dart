import 'package:bookly_app/constants/constants.dart';
import 'package:bookly_app/featuers/search_feature/presentation/veiws/wedgits/search_veiw_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchVeiw extends StatefulWidget {
  const SearchVeiw({super.key});

  @override
  State<SearchVeiw> createState() => _SearchVeiwState();
}

class _SearchVeiwState extends State<SearchVeiw> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimarycolor,
        leading:IconButton(onPressed: (){
          GoRouter.of(context).pop();
        }, icon: Icon(Icons.close,size: 30,)) ,
      ),

      body: SafeArea(child:SearchVeiwBody())

    );
  }
}
