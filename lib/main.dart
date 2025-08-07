import 'package:bookly_app/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utilities/api_service.dart';
import 'core/utilities/app_routers.dart';
import 'core/utilities/servive_locator.dart';
import 'featuers/home_feature/data/repos/home_repo_implementation.dart';
import 'featuers/home_feature/presentation/veiws_model/cubits/featuerd_book_cubit.dart';
import 'featuers/home_feature/presentation/veiws_model/cubits/newest_books_cubit.dart';
import 'featuers/splash/presentation/veiws/splash_veiw.dart';

void main() {
  setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeatuerdBookCubit(getIt.get<HomeRepoImplementation>())
          ..fetchFeaturedBooks(),),
        BlocProvider(create: (context) => NewestBooksCubit(getIt.get<HomeRepoImplementation>())
          ..fetchNewestBooks(),),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimarycolor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData
              .dark()
              .textTheme),),

      ),
    );
  }
}

