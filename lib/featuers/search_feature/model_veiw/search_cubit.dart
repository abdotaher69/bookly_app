import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../home_feature/data/models/book_model/Book_model.dart';
import '../data/repos/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;
  Future<void>getSearchedBooks(String category)async{
    emit(SearchLoading());
    var result=await searchRepo.getSearchBooks(category);
    result.fold(
      (failure) => emit(SearchFailure(failure.errormasg)),
      (books) => emit(SearchSuccess(books)),
    );

  }
}
