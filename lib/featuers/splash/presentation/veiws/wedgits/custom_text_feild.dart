import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class CustomTextfeild extends StatelessWidget {
    const CustomTextfeild({super.key, this.onSubmitted, this.controller});
    final void Function(String)? onSubmitted;
    final TextEditingController? controller;
    @override
    Widget build(BuildContext context) {
    return TextField(
       onSubmitted: onSubmitted,
    controller:controller ,
    decoration: InputDecoration(
    hintText: "Search",
    suffixIcon: IconButton(onPressed: (){}, icon: Opacity(
    opacity: 0.8,
    child: Icon(Icons.search))),
    enabledBorder: buildOutlineInputBorder(),
    focusedBorder: buildOutlinefocusedBorder()
    )
    );
    }

    OutlineInputBorder buildOutlinefocusedBorder() {
    return OutlineInputBorder(

    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: Colors.grey
        .withOpacity(0.8)

    ),


    );
    }

    OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: Colors.white),
    );
    }
    }




