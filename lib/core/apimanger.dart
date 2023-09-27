import 'package:bookly/features/books/data/models/listbook.dart';
import 'package:dio/dio.dart';

class Apimanger{
  Dio dio=Dio();
  Apimanger(this.dio);
  static const String baselink='https://www.googleapis.com/books/v1/volumes';
   Future<Listbook>getbooksllist( {required String type,required String Filtering , } )async{
     var freebooks=await dio.get('$baselink',queryParameters: {'q' : type,'Filtering' : Filtering,});
     var list=Listbook.fromJson(freebooks.data);
     return list;
   }

}