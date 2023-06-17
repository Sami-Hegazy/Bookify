part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksCubitInitial extends SimilarBooksState {}

class SimilarBooksCubitLoading extends SimilarBooksState {}

class SimilarBooksCubitSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksCubitSuccess(this.books);
}

class SimilarBooksCubitFailure extends SimilarBooksState {
  final String errorMessage;

  const SimilarBooksCubitFailure(this.errorMessage);
}
