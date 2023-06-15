import 'package:bookify/Features/Home/data/Repo/home_repo_impl.dart';
import 'package:bookify/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookify/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookify/core/utils/colors.dart';
import 'package:bookify/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/app_routes.dart';

void main() {
  setupServiceLocator();
  runApp(const BookifyApp());
}

class BookifyApp extends StatelessWidget {
  const BookifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImp>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImp>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: MyColors.kPrimaryColor,
          textTheme: ThemeData.dark().textTheme,
        ),
      ),
    );
  }
}
