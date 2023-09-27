part of 'booksk_bloc.dart';

@immutable
abstract class BookskEvent {}

class freebooksEvent extends BookskEvent{
}
class paidbooksEvent extends BookskEvent{
}