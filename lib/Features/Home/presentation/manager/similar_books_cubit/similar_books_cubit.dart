import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:bookify/Features/Home/domain/use%20cases/fetch_similar_books_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.fetchSimilarBooksUseCase)
      : super(SimilarBooksCubitInitial());
  final FetchSimilarBooksUseCase fetchSimilarBooksUseCase;

  Future<void> ferchSimilarBookks() async {
    emit(SimilarBooksCubitLoading());
    var result = await fetchSimilarBooksUseCase.call();
    result.fold((failure) {
      emit(SimilarBooksCubitFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksCubitSuccess(books));
    });
  }
}
