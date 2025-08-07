import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model/Book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'featuerd_book_state.dart';

class FeatuerdBookCubit extends Cubit<FeatuerdBookState> {
  FeatuerdBookCubit(this.homeRepo) : super(FeatuerdBookInitial());
  final HomeRepo homeRepo;
  Future<void>fetchFeaturedBooks()async{
      emit(FeatuerdBookLoading());
      var result=await homeRepo.fetchFeaturedBooks();
     result.fold(
           (failure) => emit(FeatuerdBookFailure(failure.errormasg)),
           (books) => emit(FeatuerdBookSuccess(books)),
     );
  }

}
