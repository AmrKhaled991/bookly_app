part of 'booksk_bloc.dart';

@immutable
abstract class BookskState {}

class BookskInitial extends BookskState {}
class Bookskloinding extends BookskState {
}
class BookskISucsees extends BookskState {
  Listbook res;
  BookskISucsees(this.res);

}
class BookskIerror extends BookskState {
  ServierError error;
  BookskIerror(this.error);
}
