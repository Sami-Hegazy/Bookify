import 'package:bookify/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookify/Features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookify/Features/Home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBookks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
