import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../home_feature/data/models/book_model/Book_model.dart';
abstract class SearchRepo {
 Future< Either<Failure, List<BookModel>>>getSearchBooks(String category);
}