import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utilities/functions_helper.dart';
import '../../../../../core/wedgits/custom_button.dart';
import '../../../data/models/book_model/Book_model.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomButton(
          onpressed: (){

          },
          backgroundColor:  Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16))
          ,text: "Free",
        )),
        Expanded(child: CustomButton(
    onpressed: ()  async{
      LanchURl(context,bookModel.volumeInfo!.previewLink.toString());
    },
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16))
            ,text: getText(bookModel),
        ))
      ],
    );
  }

   String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'Not available';
    } else {
      return 'Preview';

    }
  }
}
