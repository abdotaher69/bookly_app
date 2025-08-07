import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/Book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo homeRepo;
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  Future<void>fetchSimilarBooks({required String category})async{
    emit(SimilarBooksLoading());
    var result=await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
          (failure) => emit(SimilarBooksFailure(failure.errormasg)),
          (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
