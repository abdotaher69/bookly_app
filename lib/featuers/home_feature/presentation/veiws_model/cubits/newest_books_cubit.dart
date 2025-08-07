import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/Book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void>fetchNewestBooks()async{
    emit(NewestBooksLoading());
    var result=await homeRepo.fetchNewestBooks();
    result.fold(
          (failure) => emit(NewestBooksFailure(failure.errormasg)),
          (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
