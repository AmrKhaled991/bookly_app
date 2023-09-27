
import 'package:bookly/core/apimanger.dart';
import 'package:bookly/core/custm_errors.dart';
import 'package:bookly/features/books/data/models/listbook.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class authreposatry{

  Future<Either<Listbook,ServierError>>getfreebooks();
  Future<Either<Listbook,ServierError>>getpaidbooks();

}

class Impauthreposatry extends authreposatry{
  @override
  Apimanger api;
  Impauthreposatry(this.api);
  Future<Either<Listbook, ServierError>> getfreebooks()async {
  try {
    var res=await api.getbooksllist(type: 'programming', Filtering: 'newest');
    return left(res);
  }  catch (e) {
    if(e is DioException)
    return right(ServierError.fromDioError(e));
  }
  return right(ServierError('unexpacted error,plz tray again '));
  }
  
  @override
  Future<Either<Listbook, ServierError>> getpaidbooks() async{
    try {
      var res=await api.getbooksllist(type: 'programming', Filtering: 'free-ebooks');
      return left(res);
    }  catch (e) {
      if(e is DioException)
        return right(ServierError.fromDioError(e));
    }
    return right(ServierError('unexpacted error,plz tray again '));
  }

}