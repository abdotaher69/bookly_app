part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {
  const NewestBooksState();
}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  const NewestBooksSuccess(this.books);
}
final class NewestBooksFailure extends NewestBooksState {
  final String errormasg;
  const NewestBooksFailure(this.errormasg);
}
