import 'package:bookly_app/featuers/home_feature/presentation/veiws/wedgits/book_details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/Book_model.dart';
import '../veiws_model/cubits/similar_books_cubit.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key,required this.bookModel});
final BookModel bookModel;
  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).
    fetchSimilarBooks(category:widget.bookModel.volumeInfo?.categories?[0]??'Computers');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: BookDetailsBody(bookModel: widget.bookModel))
    );
  }
}
