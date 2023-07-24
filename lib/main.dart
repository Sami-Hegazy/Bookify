import 'package:bookify/Features/Home/data/Repo/home_repo_impl.dart';
import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:bookify/Features/Home/domain/use%20cases/fetch_featured_books_use_case.dart';
import 'package:bookify/Features/Home/domain/use%20cases/fetch_news_books_use_case.dart';
import 'package:bookify/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookify/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookify/core/utils/colors.dart';
import 'package:bookify/core/utils/service_locator.dart';
import 'package:bookify/core/utils/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/constants.dart';
import 'core/utils/app_routes.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();

  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  await Hive.openBox<BookEntity>(kSimilarBox);

  Bloc.observer = SimpleBlocObserver();
  runApp(const BookifyApp());
}

class BookifyApp extends StatelessWidget {
  const BookifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
              fetchFeaturedBooksUseCase:
                  FetchFeaturedBooksUseCase(getIt.get<HomeRepoImp>()))
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
              fetchNewsBooksUseCase:
                  FetchNewsBooksUseCase(getIt.get<HomeRepoImp>()))
            ..ferchNewestBookks(),
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
