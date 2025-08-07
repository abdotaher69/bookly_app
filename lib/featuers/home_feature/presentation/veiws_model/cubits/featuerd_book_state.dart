part of 'featuerd_book_cubit.dart';

@immutable
abstract class FeatuerdBookState {
  const FeatuerdBookState();
}

final class FeatuerdBookInitial extends FeatuerdBookState {}
final class FeatuerdBookLoading extends FeatuerdBookState {}
final class FeatuerdBookSuccess extends FeatuerdBookState {
  final List<BookModel> books;
  const FeatuerdBookSuccess(this.books);
}
final class FeatuerdBookFailure extends FeatuerdBookState {
  final String errormasg;
  const FeatuerdBookFailure(this.errormasg);
}

