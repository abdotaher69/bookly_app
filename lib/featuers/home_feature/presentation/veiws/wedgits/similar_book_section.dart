import 'package:bookly_app/featuers/home_feature/presentation/veiws/wedgits/similar_books_listveiw.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utilities/styles.dart';

class SimillarBooksSection extends StatelessWidget {
  const SimillarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text("you can also like",style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),),
        SizedBox(height: 20,),
        SimilarBooksListveiw(),

      ],
    );
  }
}