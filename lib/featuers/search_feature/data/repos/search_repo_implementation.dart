import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utilities/api_service.dart';
import 'package:bookly_app/featuers/home_feature/data/models/book_model/Book_model.dart';
import 'package:bookly_app/featuers/search_feature/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation extends SearchRepo{
  final ApiService apiService;
  SearchRepoImplementation(this.apiService);

  @override
  Future <Either<Failure, List<BookModel>>> getSearchBooks(String category) async{
    try{
      var result=await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:$category&Sorting=relevance');
      List<BookModel>books=[];
      for(var item in result['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch(e){
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }else{
        return left(ServerFailure('Not available please try somthing else'));
      }

      }
    }
  }

