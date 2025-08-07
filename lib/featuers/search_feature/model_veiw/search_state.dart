part of 'search_cubit.dart';

@immutable
abstract class SearchState {
  const SearchState();
}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchSuccess extends SearchState {
  final List<BookModel>books;
  const SearchSuccess(this.books);
}
final class SearchFailure extends SearchState {
  final String errormasg;
  const SearchFailure(this.errormasg);
}

