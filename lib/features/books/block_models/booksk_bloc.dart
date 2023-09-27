import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookly/core/custm_errors.dart';
import 'package:bookly/features/books/data/models/listbook.dart';
import 'package:bookly/features/books/data/reopsatory/authreposatry.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'booksk_event.dart';
part 'booksk_state.dart';

class BookskBloc extends Bloc<BookskEvent, BookskState> {
  authreposatry repo;
  BookskBloc({required this.repo}) : super(BookskInitial(),) {
    
      on<BookskEvent>((event, emit) async{
      if(event is freebooksEvent){
        emit(Bookskloinding(),);
         var res=await repo.getfreebooks();
        print('ssssssssssssssssiiiiiiiiiiiiii');
        res.fold((left) => emit(BookskISucsees(left as Listbook)), (r) =>emit(BookskIerror(r as ServierError)));}
   }
    );

  }
}