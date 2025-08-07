import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/featuers/home_feature/data/models/book_model/Book_model.dart';
import 'package:bookly_app/featuers/home_feature/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utilities/api_service.dart';

class HomeRepoImplementation implements HomeRepo{
   final ApiService apiService;
   HomeRepoImplementation(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
    try {
      var data=await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');
      List<BookModel>books=[];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if (e is DioError) {
      return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=computer science');
      List<BookModel>books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:$category&Sorting=relevance');
      List<BookModel>books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}