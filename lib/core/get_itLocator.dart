import 'package:bookly/core/apimanger.dart';
import 'package:bookly/features/books/data/reopsatory/authreposatry.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Apimanger>(Apimanger(Dio()));
  getIt.registerSingleton<authreposatry>(
      Impauthreposatry(getIt.get<Apimanger>()));
}
