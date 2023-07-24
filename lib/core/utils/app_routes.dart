import 'package:bookify/Features/Home/data/Repo/home_repo_impl.dart';
import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:bookify/Features/Home/domain/use%20cases/fetch_similar_books_use_case.dart';
import 'package:bookify/Features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookify/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookify/Features/Home/presentation/views/home_view.dart';
import 'package:bookify/Features/Search/presentation/views/search_view.dart';
import 'package:bookify/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookify/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kMainRoute = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kMainRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
              fetchSimilarBooksUseCase:
                  FetchSimilarBooksUseCase(getIt.get<HomeRepoImp>())),
          child: BookDetailsView(bookEntity: state.extra as BookEntity),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
