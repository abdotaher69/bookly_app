part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {
  const SimilarBooksState();
}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel>books;
  const SimilarBooksSuccess(this.books);
}
final class SimilarBooksFailure extends SimilarBooksState {
  final String errormasg;
  const SimilarBooksFailure(this.errormasg);
}
final class SimilarBooksLoading extends SimilarBooksState {}

