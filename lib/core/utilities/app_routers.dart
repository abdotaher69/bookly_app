import 'package:bookly_app/core/utilities/servive_locator.dart';
import 'package:bookly_app/featuers/home_feature/presentation/veiws/home_veiw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../featuers/home_feature/data/models/book_model/Book_model.dart';
import '../../featuers/home_feature/data/repos/home_repo_implementation.dart';
import '../../featuers/home_feature/presentation/veiws/book_details.dart';
import '../../featuers/home_feature/presentation/veiws_model/cubits/similar_books_cubit.dart';
import '../../featuers/search_feature/data/repos/search_repo_implementation.dart';
import '../../featuers/search_feature/model_veiw/search_cubit.dart';
import '../../featuers/search_feature/presentation/veiws/search_veiw.dart';
import '../../featuers/splash/presentation/veiws/splash_veiw.dart';

abstract class AppRouter{
  static final khomeveiw = '/homeveiw';
  static final kbookdetails = '/bookdetails';
  static final ksearchveiw = '/searchveiw';

   static final router=GoRouter(
      routes: [
        GoRoute(path: '/',
            builder:(context,state)=>const SplashVeiw() ),
        GoRoute(path: khomeveiw,
            builder:(context,state)=>const HomeVeiw() ),
        GoRoute(path: kbookdetails,
            builder:(context,state)=>BlocProvider(create: (context)=>SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
            child:  BookDetails(bookModel:state.extra as BookModel,)) ),
        GoRoute(path:ksearchveiw,
            builder:(context,state)=>BlocProvider(create: (context)=>SearchCubit(getIt.get<SearchRepoImplementation>()),
                child:  SearchVeiw()) )


      ]

  );
}