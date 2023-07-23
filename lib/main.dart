import 'package:bookify/Features/Home/domain/Repo/home_repo_impl.dart';
import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:bookify/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookify/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookify/core/utils/colors.dart';
import 'package:bookify/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'core/constants.dart';
import 'core/utils/app_routes.dart';

void main() async {
  setupServiceLocator();
  runApp(const BookifyApp());

  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kfeaturedBox);
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
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImp>())..ferchNewestBookks(),
        ),
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
