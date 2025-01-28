import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await _apiService
          .get('volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = (data['items'] as List)
          .map((item) => BookModel.fromJson(item))
          .toList();
      return Right(books);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatuerdBooks() {
    // TODO: implement fetchFeatuerdBooks
    throw UnimplementedError();
  }
}
